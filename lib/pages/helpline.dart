import 'package:flutter/material.dart';

class contact extends StatelessWidget {
  const contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("HelpLine Numbers"),
          elevation: 0,
        ),
      body: const SafeArea(
        
        child: SingleChildScrollView(child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("COVID HELPLINE NUMBER : 03592-201145\nSTD CODE : GANGTOK 03592\nCentralized Emergency No : 112\nPolice 100\nFire 101\nAmbulance 102 , 202001\nWomen Helpline 181\nChild Helpline 1098\nNatural Calamaties 03592-202371\nBorder Road Orgn. 03592-203241, 202268\nCivil Defense 03592-202922\nHelicopter Service 03592-202634/202352\nArmy Helpline 03592-202228\nHospitals and Blood Banks\nGangtok Hospital 03592-202059/202944\nManipal Hospital 03592-232041/231938\nChief Medical Officer (EAST ) 03592-235379\nBlood Bank 03592-227619\nMO/IC Rhenock PHC 03592-253896\nMO/IC Rongli PHC 03592-255865\nMO/IC Pakyong PHC 03592-578852\nMO/IC Sang PHC 03592-236860\nMO/IC Dikchu PHC 03592-245427\nChief Medical Officer (WEST ) 03595-250634\nGyalzing Hospital 03595-250823\nSombaria PHC 03595-254248\nSoreng PHC 03595-253273\nDentam PHC 03595-255311\nMangalbaria PHC 03595-252204\nNamchi District Hospital 03595-263741\nChief Medical Officer (SOUTH) 03595-263830/263835\nJorethang PHC 03595-257233\nMO/IC Namthang 03595-241260\nMO/IC Temi 03595-261840\nMO/IC Melli 03595-270245\nMO/IC Yangyang 03595-243222\nMO/IC Ravangla 03595-260612\nAmbulance : 102\nEAST DISTRICT GANGTOK 03592-222944\nSINGTAM 03592-233757\nGYALSING 03595-250823\nNAMCHI 03595-263729\nJORTHANG ( SOUTH ) 03595-257233\nFIRE BRIGADE / HELP : 101\nEAST DISTRICT GANGTOK 03592-202001/202022\nSINGTAM 03592-233722\nGYALSING ( WEST )03595-250810\nJORTHANG ( SOUTH )03595-257327\nNAMCHI ( SOUTH )03595-263888\nELECTRICITY HELPLINE\nEAST DISTRICT GANGTOK 03592-202911\n\SINGTAM 03592-233868\nGYALSING 03595-250817\nNAMCHI 03595-263726\nJORTHANG ( SOUTH ) 03595-\nPOLICE STATION\nPOLICE STATION 100\nS.P EAST GANGTOK 03592-284416/202681\nS.P NORTH 03595-234242/234285\nS.P SOUTH 03595-263726\n",style: TextStyle(height: 2,fontSize: 16),textAlign: TextAlign.justify,),
        )),
      ),
    );
  }
}

class Number extends StatelessWidget {
   Number({
    super.key, required this.data,
  });
 List<String> data=[];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(color: Color.fromARGB(255, 235, 235, 235),
        height: 50,
        width: MediaQuery.sizeOf(context).width*0.95,
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Align(child: ListView.builder(
                  itemCount: data.length, // Number of items in the list
                  itemBuilder: (context, index) {
        // Build a widget for each item in the list
                      return ListTile(
                        title: Text(data[index]), // Display the data
        );
      },
    ),alignment: Alignment.centerLeft,),
        ),
      ),
    );
  }
}

/*
Container(
  child:
 ListView.builder(
      itemCount: data.length, // Number of items in the list
      itemBuilder: (context, index) {
        // Build a widget for each item in the list
        return ListTile(
          title: Text(data[index]), // Display the data
        );
      },
    );
)*/
