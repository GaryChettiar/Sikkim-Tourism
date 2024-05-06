import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  var prevlang;
  var languages=['English','Hindi','Nepali'];
  var  currentLanguage;
  void translate(String currentLanguage, String newlanguage, String input) async {
    GoogleTranslator translator =new GoogleTranslator();
    var translation = await translator.translate(input, from: currentLanguage, to: newlanguage);
    
  }
  String getlanguageCode(String language){
      if(language=='English'){
        return 'en';
      }
      else if(language=='Hindi'){
        return 'hi';
      }
      else if(language=='Nepali'){
        return 'ne';
      }
      return'--';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Settings"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    height: MediaQuery.sizeOf(context).height*0.15,
                    width: double.infinity,
                    color: Color.fromARGB(255, 227, 225, 225),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(child: Text("Change Language",style: TextStyle(
                        fontSize: 20
                      ),),alignment: Alignment.centerLeft,),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    height: MediaQuery.sizeOf(context).height*0.15,
                    width: double.infinity,
                    color: Color.fromARGB(255, 227, 225, 225),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(child: Text("Add a place",style: TextStyle(
                        fontSize: 20
                      )),alignment: Alignment.centerLeft,),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    height: MediaQuery.sizeOf(context).height*0.15,
                    width: double.infinity,
                    color: Color.fromARGB(255, 227, 225, 225),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(child: Text("Exit",style: TextStyle(
                        fontSize: 20
                      )),alignment: Alignment.centerLeft,),
                    ),
                  ),
                ),
              ),
              DropdownButton(items: languages.map((String dropDownItem) {
                return DropdownMenuItem(child: Text(dropDownItem),value: dropDownItem,);
              }).toList(), onChanged: (value) {
                translate(getlanguageCode(currentLanguage), getlanguageCode(value.toString()), "Good Morning");
                currentLanguage=value;
               
              },),
             
            ],
          ),
        ),
      ),
    );
  }
}