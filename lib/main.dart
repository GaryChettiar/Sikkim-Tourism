import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sikkimtourism/firebase_options.dart';

import 'package:sikkimtourism/pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
     /*localizationsDelegates: <LocalizationsDelegate<Object>>[
  
  ],
    supportedLocales: [
      Locale('en'),
      Locale('hi'),
    ],*/
   
    debugShowCheckedModeBanner: false,
    home:StartPage(),
  ));
}



class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/bg.jpg"),
          fit: BoxFit.cover),
        ),
        child:  SafeArea(
          child:  Column(
            
          mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 100,),
              const Text("Welcome to Sikkim",textAlign: TextAlign.center, 
              style: TextStyle(
                color: Color.fromARGB(1000, 255, 255, 255),
                fontSize: 51,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400
                ),),

                const SizedBox(height:400,),
                Center(
                  
                  child:InkWell(
                    onTap: () {
                      Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=> const home())
                      );
                    },
                    child: Container(
                      
                      height: 70,
                      width: MediaQuery.sizeOf(context).width*0.782,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(64),
                        color: Color.fromARGB(216, 162, 210, 255),),
                      child: const Center(child:
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                       Text("Get Started",style: TextStyle(
                        color: Colors.white,
                        fontSize: 37,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400
                      ),),

                      Icon(Icons.arrow_forward_rounded,size: 40,color:  Colors.white,)
                      ],
                        )
                      
                       ),
                    ),
                  )
                )
            ],
          ),
        ),
      ),
    );
  }
}

