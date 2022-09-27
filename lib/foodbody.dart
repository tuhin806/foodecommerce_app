import 'package:flutter/material.dart';
import 'package:foodecommerce1/foodpage.dart';
class Mainfoodpage extends StatefulWidget {
  const Mainfoodpage({Key? key}) : super(key: key);

  @override
  State<Mainfoodpage> createState() => _MainfoodpageState();
}

class _MainfoodpageState extends State<Mainfoodpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              child:Container(
                margin: EdgeInsets.only(top: 45.0,bottom: 15.0),
                padding: EdgeInsets.only(left: 20.0,right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Bangladesh',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20.0,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Narasidi',
                              style: TextStyle(
                                color: Colors.teal.withOpacity(0.9),
                              ),
                            ),
                            Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      ],
                    ),
                       Column(
                         children: [
                           Padding(
                             padding: EdgeInsets.only(left: 20.0),
                           ),
                           Container(
                              width: 45.0,
                              height: 45.0,
                              child: Icon(Icons.search,color: Colors.white),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.blue,
                              ),
                            ),
                         ],
                       ),
                  ],
                ),
              )
          ),
          Foodbody(),
          SizedBox(height: 10.0),
         Column(
           children: [
             Text(
               "Chinesse Food",
               style: TextStyle(
                 color: Colors.black,fontWeight: FontWeight.bold,
                 fontSize: 20.0,
               ),
             ),
             SizedBox(height: 10.0),
         Container(
           width: 180.0,
           height: 180.0,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15.0),
             color: Colors.yellow,
             image: DecorationImage(
               image: AssetImage('images/food4-free-img-2.png'),
             ),
           ),
         ),
             SizedBox(height: 10.0),
             Text(
              'Order Chinese Fooddelivery online from '
             'shops near you with Uber Eats. '
             'Discover the stores offering  '
             'Chinese Food delivery nearby.',
               style: TextStyle(
                 color: Colors.black,fontWeight: FontWeight.bold,
                 fontSize: 15.0,
               ),
             ),

           ],
         ),

      ]
      ),
     );
  }
}