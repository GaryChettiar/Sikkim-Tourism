import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),itemCount: 20, itemBuilder: (context,index) {
        return Padding(padding: const EdgeInsets.all(6),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(11),
          child:Image.asset("assets/valhalla.jpg")
        ),);
      }),
    );
  }
}