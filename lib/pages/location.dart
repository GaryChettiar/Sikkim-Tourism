// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sikkimtourism/map_utils.dart';

class Location extends StatefulWidget {
  const Location({super.key,required this.name, required this.pic1, required this.pic2, required this.desc, required this.lat,required this.long});
  final String name; 
  final String pic1;
  final String pic2;
  final String desc;
  final double lat;
  final double long;
  @override
  State<Location> createState() => _LocationState(name:name, pic1: pic1, pic2: pic2,desc: desc,lat: lat,long: long);
}

class _LocationState extends State<Location> {
  final String name; 
  final String pic1;
  final String pic2;
  final String desc;
  final double lat;
  final double long;
  _LocationState(  { required this.name,required this.pic1,  required this.pic2, required this.desc, required this.lat, required this.long});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: 
            
            SingleChildScrollView(scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.44,
                    width: MediaQuery.sizeOf(context).width,
                    decoration:  BoxDecoration(
                      image: DecorationImage(
                                image: AssetImage(pic1),
                                fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.44,
                    width: MediaQuery.sizeOf(context).width,
                    decoration:  BoxDecoration(
                      image: DecorationImage(
                                image: AssetImage(pic2),
                                fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))),
                  )
                ],
              ),
            ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Align(alignment: Alignment.centerLeft,
                      child: Text(name,style: TextStyle(fontSize: 32,fontFamily: "Poppins",fontWeight: FontWeight.w600),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 30, 0),
                    child: Align(alignment: Alignment.center,
                      child: Text(
                        desc,
                        style: TextStyle(fontSize: 21,fontFamily: "Poppins",height:1.7 ),textAlign: TextAlign.justify,)),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  InkWell(
                    onTap: () {
                      MapUtils.openMap(lat, long);
                    },
                    child: Container(
                      height: 70,
                      width: MediaQuery.sizeOf(context).width*0.75,
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue[200],
                      ),
                      child: Center(child: 
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                Icon(Icons.map_sharp),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("View in maps",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)
                              ],),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Already visited? Rate it",style: TextStyle(fontSize: 25,height: 1.9),),
                  ),
                  RatingBar.builder(itemBuilder: (context, _)=>Icon(Icons.star,color: Colors.yellow,), onRatingUpdate: (rating){

                  },glow: false,allowHalfRating: true,itemSize: 50,)
                ],
              ),
            ),

          
        ),
      
    );
  }
}