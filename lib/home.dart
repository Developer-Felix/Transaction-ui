import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       body: Stack(
         children: [
           Container(
             height: double.infinity,
           ),
           Container(
             height: 300,
             decoration: BoxDecoration(
               color: Colors.pink.shade800,
               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)  )
               ),
               ),
           Positioned(
             top: 160,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 height: 180,
                 width: 300,
                 decoration: BoxDecoration(
                   color: Colors.pink.shade900,
                   borderRadius: BorderRadius.circular(20),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.shade800,
                       offset: Offset(3,7),
                       blurRadius: 20
                     ),

                   ]
                 ),
                 child: Column(
                   children: [
                     Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Image.asset("images/master.png",width: 50,),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Icon(Icons.more_vert,color: Colors.white,),
                           )
                         ],
                       ),
                     SizedBox(height: 30,),
                     Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: RichText(text: TextSpan(children: [
                           TextSpan(text: "Onjomba Felix\n"),
                           TextSpan(text: "**** **** **** 1969\n"),
                           TextSpan(text: "VALID 19/22",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300))
                           ],style: TextStyle(fontSize: 22)
                            )),
                         ),
                       ],
                     )
                   ],
                   ),
               ),
               
             ),)
         ],
       ),
    );
  }
}

class HexColor extends Color{
  HexColor(int value) : super(value);

  // ignore: unused_element
   static int _getColorFromHex(String hexColor){
    hexColor = hexColor.toLowerCase().replaceAll("#", "");
    if (hexColor.length == 6){
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}