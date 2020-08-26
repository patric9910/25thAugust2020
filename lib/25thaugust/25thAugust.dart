import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'customwidget.dart';

void main() => runApp(AppRun());

class AppRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(),
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  Offset _offset = Offset(0, 0);
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              enableFeedback: true,
              onPressed: () {
                setState(() {
                  if (isOpen) {
                    isOpen = false;
                    print("isOpen is $isOpen");
                  } else {
                    isOpen = true;
                    print("2ndCondit:isOpen is $isOpen");
                  }
                });
              }),
          actions: [
            IconButton(
                enableFeedback: true,
                icon: Icon(Icons.search),
                color: Colors.black,
                onPressed: null),
          ],
          title: Text(
            "Portfolio",
            style: GoogleFonts.poppins(fontSize: 25.0, color: Colors.black),
          ),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Container(
          width: size.width,
          child: Stack(children: <Widget>[
            ListView(
              padding: EdgeInsets.symmetric(vertical: 10),
              children: [
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  height: size.height * 0.2,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: profiles.length,
                      itemBuilder: (context, int index) {
                        if (index == 0) {
                          return Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Column(children: [
                              Container(
                                height: size.height * 0.15,
                                width: size.height * 0.15,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.add),
                              ),
                              Spacer(),
                              customtext("Add More", 16),
                            ]),
                          );
                        } else {
                          return Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: profile(profiles[index].imagepath,
                                profiles[index].name, size),
                          );
                        }
                      }),
                )
              ],
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 1000),
              left: isOpen ? 0 : -size.width,
              top: 0,
              curve: Curves.bounceInOut,
              child: SizedBox(
                width: size.width * 0.6,
                child: GestureDetector(
                  onPanUpdate: (details) {
                    if (details.localPosition.dx <= size.width * 0.6) {
                      setState(() {
                        _offset = details.localPosition;
                      });
                    }
                  },
                  onPanEnd: (details) {
                    setState(() {
                      _offset = Offset(0, 0);
                    });
                  },
                  child: Stack(
                    children: [
                      CustomPaint(
                        size: Size(size.width * 0.6, size.height),
                        painter: MyPaint(offset: _offset),
                      )
                    ],
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}

class MyPaint extends CustomPainter {
  final Offset offset;

  MyPaint({this.offset});
  double getControlpointX(double width) {
    if (offset.dx == 0) {
      return width;
    } else {
      return offset.dx > width ? offset.dx : width + 75;
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.lightBlueAccent
      ..style = PaintingStyle.fill;
    Path path = Path();
    path.moveTo(-size.width, 0);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(
        getControlpointX(size.width), offset.dy, size.width, size.height);
    path.lineTo(-size.width, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

List<User> profiles = [
  User(name: "Malrose", imagepath: "assets/1.jpg"),
  User(name: "Patric", imagepath: "assets/2.jpg"),
  User(name: "Flippy", imagepath: "assets/3.jpg"),
  User(name: "Alexander", imagepath: "assets/4.jpg"),
  User(name: "Reus", imagepath: "assets/5.jpg"),
];

class User {
  String name;
  String imagepath;
  User({this.name, this.imagepath});
}
