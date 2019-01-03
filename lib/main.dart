import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppInner(),
    );
  }
}

class MyAppInner extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark
        .copyWith(statusBarColor: Colors.black.withOpacity(0.0)));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fun App',
        home: Container(
            color: Colors.yellow[700],
            child: Scaffold(
                body: Column(
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      color: Color(0xFFFDD74D),
                      height: 250.0,
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: 50.0,
                      right: 140.0,
                      child: Container(
                        height: 400.0,
                        width: 400.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Color(0x7FFEE26D),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 120.0,
                      left: 200.0,
                      child: Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(160.0),
                          color: Color(0x7FFEE26D),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 50.0,
                        ),
                        Row(
                          children: <Widget>[
                            // SizedBox(
                            //   width: 0.0,
                            // ),
                            Stack(
                              alignment: Alignment.topRight,
                              children: <Widget>[
                                Icon(
                                  Icons.apps,
                                  color: Colors.white,
                                  size: 50.0,
                                ),
                                Container(
                                  alignment: Alignment.topRight,
                                  margin: EdgeInsets.all(20.0),
                                  width: 50.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.0),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2.0
                                      ),
                                      image: DecorationImage(
                                          image:
                                              AssetImage('assets/chris.jpg'))),
                                ),
                              ],
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width - 160.0),
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 50.0,
                            ),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 15.0),
                            child: Text(
                              'Hello, Pino',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 15.0, top: 10.0),
                            child: Text(
                              'What do you want to buy?',
                              style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold),
                            )),
                          SizedBox(height: 10.0,),
                          Padding(
                            padding: EdgeInsets.only(left:15.0, right:15.0),
                            child: Material(
                              elevation: 6.0,
                              borderRadius: BorderRadius.circular(5.0),
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 24.0
                                ),
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.search,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.search,
                                  color: Color(0xFFFDD74D),
                                  size: 30.0,
                                  ),
                                  contentPadding: EdgeInsets.only(top:8.0, left: 20.0),
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Quicksand',
                                    fontSize: 18.0,
                                    
                                  ),
                                ),
                              )
                            )
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                      ],
                    ),
                  ],
                )
              ],
            ))));
  }
}
