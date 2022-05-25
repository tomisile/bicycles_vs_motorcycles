import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: Home(),
          theme: ThemeData(
              brightness: Brightness.light,
              primaryColor: Colors.lightBlue[800],
              accentColor: Colors.cyan[600]
          ) // ThemeData
      ) // MaterialApp
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // check user screen size for positioning
    Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            height: size.height * 0.4, // covers 40% from the top of the screen
            width: size.width, // covers the entire width
            child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/background.jpeg"),
                    fit: BoxFit.cover,
                  )
                ),
            ), // Container
          ), // Positioned
          Positioned(
            top: size.height * 0.35,
            height: size.height * 0.65,
            width: size.width,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(36.0),
                    topRight: Radius.circular(36.0)
                ), //BorderRadius.only
              ), // BoxDecoration
              child: Column(
                  children: [
                    SizedBox(height: 80),
                    Text("Prediction", style:
                    TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                    ),), // TextStyle, Text
                    SizedBox(height: 10),
                    Text("76% Bicycle", style:
                    TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),), // TextStyle, Text)
                    SizedBox(height: 100),
                    Row(
                        mainAxixAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              OutlineButton(
                                onPressed: () {},
                                highlightedBorderColor: Colors.orange,
                                highlightElevation: 10,
                                color: Colors.white,
                                textColor: Colors.white,
                                padding: EdgeInsets.all(16.0),
                                shape: CircleBorder(),
                                child: Icon(
                                  Icons.camera_alt,
                                  size: 35,
                                  color: Colors.orange,
                                ), // Icon
                              ), // OutlineButton
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text("Take a Photo",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),), // TextStyle, Text
                              ), // Padding
                            ],
                          ), // Column
                          SizedBox(width: 50),
                          Column(
                            children: [
                              OutlineButton(
                                onPressed: () {},
                                highlightedBorderColor: Colors.blue[800],
                                highlightElevation: 10,
                                color: Colors.white,
                                textColor: Colors.white,
                                padding: EdgeInsets.all(16.0),
                                shape: CircleBorder(),
                                child: Icon(
                                  Icons.photo,
                                  size: 35,
                                  color: Colors.blue[800],
                                ), // Icon
                              ), // OutlineButton
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Text("Select from gallery",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),), // TextStyle, Text
                              ), // Padding
                            ],
                          ), // Column
                        ]
                    ), // Row
                  ]
              ), // Column
            ), // Container
          ), // Positioned
        ],
      ), // Stack
    ); // Scaffold
  }
}
