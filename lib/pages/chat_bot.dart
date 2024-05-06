import 'dart:convert';
import 'package:flutter/material.dart';

class ChatbotScreen extends StatefulWidget {
  @override
  _ChatbotScreenState createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends State<ChatbotScreen> {
  List<dynamic> knowledgeBase = [];
  List<String> messages = [];
final myController = TextEditingController();
  @override
  void initState() {
    super.initState();
    loadKnowledgeBase();
  }

  Future<void> loadKnowledgeBase() async {
    String jsonData = await DefaultAssetBundle.of(context)
        .loadString('assets/data/offline_knowledge_base.json');
    setState(() {
      knowledgeBase = jsonDecode(jsonData)['questions'];
    });
  }

  String findBestMatch(String userQuestion) {
    List<String> questions =
        knowledgeBase.map((q) => q['question']).cast<String>().toList();
    int bestMatchIndex = -1;
    double maxSimilarity = 0.2;

    for (int i = 0; i < questions.length; i++) {
      double similarity = _calculateSimilarity(userQuestion, questions[i]);
      if (similarity > maxSimilarity) {
        maxSimilarity = similarity;
        bestMatchIndex = i;
      }
    }

    if (bestMatchIndex != -1 && maxSimilarity >= 0.2) {
      return questions[bestMatchIndex];
    }
    return '';
  }

  double _calculateSimilarity(String str1, String str2) {
    List<String> str1Tokens = str1.toLowerCase().split(' ');
    List<String> str2Tokens = str2.toLowerCase().split(' ');
    int intersection = 0;
    for (String token in str1Tokens) {
      if (str2Tokens.contains(token)) {
        intersection++;
      }
    }
    return intersection /
        (str1Tokens.length + str2Tokens.length - intersection);
  }

  String getAnswerForQuestion(String question) {
    for (var q in knowledgeBase) {
      if (q['question'] == question) {
        return q['answer'];
      }
    }
    return '';
  }

  void _sendMessage(String message) {
    setState(() {
      messages.add('You: $message');
    });

    String bestMatch = findBestMatch(message);
    if (bestMatch.isNotEmpty) {
      String answer = getAnswerForQuestion(bestMatch);
      if (answer.isNotEmpty) {
        setState(() {
          messages.add('Bot: $answer');
        });
      } else {
        setState(() {
          messages.add('Bot: Sorry, I don\'t have an answer for that.');
        });
      }
    } else {
      setState(() {
        messages.add('Bot: Sorry, I don\'t understand the question.');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 189, 224, 254),
      appBar: AppBar(
        title: Text('Chatbot'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: false,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: (messages[index][0]=='B')?EdgeInsets.fromLTRB(10, 8, 50, 8):EdgeInsets.fromLTRB(50, 8, 10, 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: (messages[index][0]=='B')?
                    Color.fromARGB(255, 142, 202, 230):Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(11)
                    ),
                    width: 40,  
                    constraints: BoxConstraints(maxWidth: 40),
                    
                    child: Padding(
                      padding: (messages[index][0]=='B')?EdgeInsets.fromLTRB(10, 8, 50, 8):EdgeInsets.fromLTRB(50, 8, 10, 8),
                      child: Text(messages[index],overflow: TextOverflow.clip,textAlign: (messages[index][0]=='B')?TextAlign.left:TextAlign.right,style: TextStyle(fontSize: 18),),
                    )),
                );
              },
            ),
          ),

          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(8, 0, 8, 4),
                      child: TextField(
                        controller: myController,
                        onSubmitted: _sendMessage,
                        decoration: InputDecoration(
                          
                          hintText: 'Type your message...',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  _sendMessage(myController.text);
                  myController.clear();
                  // Get the text from the TextField
                  // and call _sendMessage with the text
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
