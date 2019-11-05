import 'package:flutter/material.dart';

import 'selector.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demin Jacket',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/1.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Positioned(
                  top: 20.0,
                  left: 20.0,
                  child: Container(
                    height: 35.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 10.0,
                              offset: Offset(.75, .75)),
                        ],
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 20.0,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .5,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * .55,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F6FA),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.0,
                        vertical: 30.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Denim Jacket",
                            style: TextStyle(
                                fontSize: 36.0, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            "Ripped Faded Wash Stitch Detail",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Colors",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500)),
                              Text("Size",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500)),
                              SizedBox()
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Selector(
                                selectors: [
                                  Color(0xFF97CAEF),
                                  Color(0xFF000000),
                                ],
                                color: true,
                              ),
                              Selector(
                                selectors: ["S", "M", "L"],
                                color: false,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  print("favorite");
                                },
                                child: Container(
                                  height: 70.0,
                                  width: 70.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10.0,
                                          color: Colors.black12),
                                    ],
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.favorite,
                                      color: Color(0xFFB1BFCD),
                                      size: 40.0,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  print('pay');
                                },
                                child: Container(
                                  height: 70.0,
                                  width: MediaQuery.of(context).size.width * .5,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF82D7E4),
                                    borderRadius: BorderRadius.circular(20.0),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 10.0,
                                          color: Colors.black12),
                                    ],
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          "\$350",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30.0,
                                            fontWeight: FontWeight.w500
                                          ),
                                        ),
                                        Icon(Icons.arrow_forward,color: Colors.white,size: 35.0,),
                                        SizedBox(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30.0,)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
