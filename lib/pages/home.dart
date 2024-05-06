import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:sikkimtourism/map_utils.dart';
import 'package:sikkimtourism/pages/chat_bot.dart';
import 'package:sikkimtourism/pages/gallery.dart';
import 'package:sikkimtourism/pages/helpline.dart';
import 'package:sikkimtourism/pages/location.dart';
import 'package:sikkimtourism/pages/settings.dart';
import 'package:url_launcher/url_launcher.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: SafeArea(
          
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Welcome",style: TextStyle(
                        fontSize: 32,
                      ),),
                      
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> const settings()));
                        },
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('assets/profilepic.png'),
                          backgroundColor: Colors.white, 
                          radius: 37.5
                          ),
                      )
                    ],
                  ),
                ),
        
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){},
                          child:Container(
                            height: 46,
                            width: 141,
                            decoration: BoxDecoration(
                              color: Colors.blue[200], 
                              borderRadius: BorderRadius.circular(12)
                              ),
                            child: Center(child: Text("Visit", style: TextStyle(fontSize: 20),)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){},
                          child:Container(
                            height: 46,
                            width: 141,
                            decoration: BoxDecoration(
                              color: Colors.blue[200], 
                              borderRadius: BorderRadius.circular(12)
                              ),
                            child: Center(child: Text("Stay",style: TextStyle(fontSize: 20),)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){},
                          child:Container(
                            height: 46,
                            width: 141,
                            decoration: BoxDecoration(
                              color: Colors.blue[200], 
                              borderRadius: BorderRadius.circular(12)
                              ),
                            child: Center(  child: Text("Dine",style: TextStyle(fontSize: 20),)),
                          ),
                        ),
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>contact()));
                          },
                          child:Container(
                            height: 46,
                            width: 141,
                            decoration: BoxDecoration(
                              color: Colors.blue[200], 
                              borderRadius: BorderRadius.circular(12)
                              ),
                            child: Center(  child: Text("HelpLine",style: TextStyle(fontSize: 20),)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            String url ="https://sikkimtourism.gov.in/Public/TravellerEssentials/pap";
                             Uri Gurl =Uri.parse(url);
                            launchUrl(Gurl);
                          },
                          child:Container(
                            height: 46,
                            width: 141,
                            decoration: BoxDecoration(
                              color: Colors.blue[200], 
                              borderRadius: BorderRadius.circular(12)
                              ),
                            child: Center(child: Text("Permits",style: TextStyle(fontSize: 20),)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Align(child: Text("Places to visit",textAlign: TextAlign.left,style: TextStyle(
                    fontSize: 26,
                  ),),alignment: Alignment.centerLeft),
                ),

                
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(name: "Nathula Pass",pic1: "assets/nathula1.jpg",pic2: "assets/nathula2.jpeg",desc: "Nathula Pass, nestled in the Himalayas at an altitude of 14,140 feet, is a breathtaking mountain pass that connects the Indian state of Sikkim with Tibet Autonomous Region in China. Surrounded by towering peaks and pristine snow-capped mountains, Nathula Pass offers a surreal experience to visitors. ",lat: 27.3866,long: 88.8309,),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(name: "Ganesh Tok",pic1: "assets/ganeshtok1.jpg",pic2: "assets/ganeshtok2.jpg",desc: "Ganesh Tok is a serene viewpoint nestled in the hills of Gangtok, the capital of Sikkim, India.  Perched at an altitude of about 6,500 feet, this small yet captivating site also features a charming Ganesh temple dedicated to Lord Ganesh, adding a spiritual touch to the scenic beauty. ",lat: 27.341311,long: 88.621313,)
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(name: "Temi Tea Estate",pic1:"assets/temi1.jpg",pic2: "assets/temi2.jpg" ,desc: "Temi Tea Estate, nestled in the lush Himalayan foothills of Sikkim, is renowned for producing premium organic tea. With its picturesque landscape and cool climate, Temi cultivates high-quality tea leaves, offering a unique flavor profile cherished by tea enthusiasts worldwide. Established in 1969, it remains one of India's most prestigious tea plantations, blending tradition with sustainable practices.",lat: 27.2341,long: 88.4132,)
                      ),
                      
                    ],
                  ),
                ),
 Divider(
              height: 50,
              color: Colors.black,
        ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Align(child: Text("Stay here",textAlign: TextAlign.left,style: TextStyle(
                    fontSize: 26,
                  ),),alignment: Alignment.centerLeft),
                ),
         
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(name: "Orange Village Resort",pic1:"assets/orangevillage.jpg",pic2: "assets/orangevillage2.jpg" ,desc: "7th Mile, \nSamdure,\nGangtok 737102 \nContact: +91 9514800900",lat: 27.3029308,long: 88.5052026,)
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(name: "Divine's the elite zong",pic1:"assets/divine.jpg",pic2: "assets/divine2.jpg" ,desc: "Shakothang Road, \nLachung 737120 \nContact: 09339344626",lat: 27.6861201,long: 88.7036016,)
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(name: "Seven Hills Resort",pic1:"assets/sevenhills.jpg",pic2: "assets/sevenhills2.jpg" ,desc: "Phalidara, \nNamchi, \nSikkim,\nContact: +91 97330 53324",lat: 27.1669201,long: 88.3240116,)
                      ),
                      
                    ],
                  ),
                ),
        
        Divider(
              height: 50.0,
              color: Colors.black,
        ),
        Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Align(child: Text("Dine Here",
                  textAlign: TextAlign.left,style: TextStyle(
                    fontSize: 26,
                  ),),alignment: Alignment.centerLeft),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(name: "Osm Restro & Lounge",pic1:"assets/osm.jpg",pic2: "assets/osm2.jpeg" ,desc: "M.G. Marg 2nd Floor, \nNear Half Gandhi Statue, \nGangtok 737101 \nContact: +91 98326 60400",lat: 27.3283836,long: 88.571032,)
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(name: "tathagata Kitchen",pic1:"assets/tathagata.jpg",pic2: "assets/tathagata2.jpg" ,desc: "rabong Road, \nBelow Buddha Park, \nRabong, South Sikkim, \nRavangla \nContact: +91 96098 50585",lat: 27.3138561,long: 88.321199,)
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(name: "Brew n Barrel",pic1:"assets/brew.jpg",pic2: "assets/brew2.jpg" ,desc: "Namchi - Namthang Rd, \nNamchi, \nSikkim",lat: 27.1675832,long: 88.3261001,)
                      ),
                      
                    ],
                  ),
                  
                ),
                 Divider(
              height: 50.0,
              color: Colors.black,
        ),
               /* InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Gallery()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Align(child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Gallery",
                    textAlign: TextAlign.left,style: TextStyle(
                      fontSize: 26,
                    ),),
                    Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                    
                    alignment: Alignment.centerLeft),
                  ),
                ),
                 Divider(
              height: 50.0,
              color: Colors.black,
        ),
                */
              
              ],
              ),
        ),
        
        ),
        floatingActionButton: Container(
          height: 76,
          width: 76,
          
          child: FittedBox(child: FloatingActionButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatbotScreen()));
          },child: Icon(Icons.chat_rounded),backgroundColor: Color.fromARGB(210, 94, 176, 253),))),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    required this.name,
    super.key, required this.pic1, required this.pic2, required this.desc,required this.lat,required this.long
  });
 final String name;
    final String pic1;
    final String pic2;
    final String desc;
    final double lat;
    final double long;
  @override
  Widget build(BuildContext context) {
   
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> Location(name: name,pic1:pic1,pic2: pic2,desc: desc,lat: lat,long: long,)));
      },
      child: Container(
        height: MediaQuery.sizeOf(context).height*0.49,
        width: MediaQuery.sizeOf(context).width*0.95,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(pic1),
          fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(11),
          boxShadow: [new BoxShadow(
            color: Color.fromARGB(67, 0, 0, 0),
            blurRadius: 4,
            offset: Offset(3, 4),
          )]
          ),
      ),
    );
  }
}