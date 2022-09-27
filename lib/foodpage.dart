import 'package:flutter/material.dart';
class Foodbody extends StatefulWidget {
  const Foodbody({Key? key}) : super(key: key);

  @override
  State<Foodbody> createState() => _FoodbodyState();
}

class _FoodbodyState extends State<Foodbody> {
  PageController pageController = PageController(viewportFraction: 0.85);

  double scaleFactor = 0.8;
  double height = 220.0;

  get currentIndexPage => null;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          height: 320.0,
          child: PageView.builder(
              controller: pageController,
              itemCount: 7,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        )


      ],
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220.0,
          margin: EdgeInsets.only(left: 5.0, right: 5.0),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
              ),
              Text(
                'This is a Turkey Food\n'
                    'Thanksgiving Dinner at UHS',
                style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],

          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: index.isEven ? Color(0xFFFFB300) : Color(0xFFFFB300),
            image: DecorationImage(
              image: AssetImage('images/food4-free-img-2.png'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120.0,
            margin: EdgeInsets.only(left: 40.0, right: 40.0, bottom: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, 0),
                ),
              ],
            ),
            child: Container(
              padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'chinese Side',
                    style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) =>
                            Icon(Icons.star, color: Colors.blue, size: 15.0,)),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        "4.5",
                        style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        '1234',
                        style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Comments',
                        style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      Icon(
                        Icons.local_airport_outlined,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 20.0),
                      Icon(
                        Icons.accessible,
                        color: Colors.red,
                      ),
                      SizedBox(width: 20.0),
                      Icon(
                        Icons.access_alarm,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

      ],

    );
  }
}



