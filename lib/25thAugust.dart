import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(AppRun());

class AppRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(),
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.menu), color: Colors.black, onPressed: null),
          actions: [
            IconButton(
                icon: Icon(Icons.search), color: Colors.black, onPressed: null),
          ],
          title: Text(
            "Portfolio",
            style: GoogleFonts.poppins(fontSize: 25.0, color: Colors.black),
          ),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 10),
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              height: size.height * 0.2,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: profiles.length,
                  itemBuilder: (context, int index) {
                    // if (index == 0) {
                    //   return Column(children: [
                    //     Container(
                    //       height: size.height * 0.15,
                    //       width: size.height * 0.15,
                    //       decoration: BoxDecoration(
                    //         color: Colors.orangeAccent,
                    //         shape: BoxShape.circle,
                    //       ),
                    //       child: Icon(Icons.add),
                    //     ),
                    //     Spacer(),
                    //     customtext("Add More", 16),
                    //   ]);
                    // } else {
                    //   return profile(profiles[index], size);
                    // }
                    return Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: profile(profiles[index].imagepath,
                          profiles[index].name, size),
                    );
                  }),
            )
          ],
        ));
  }
}

Widget customtext(String text, double fontsize) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontsize,
    ),
  );
}

Widget profile(String imagepath, String name, Size size) {
  return Column(
    children: [
      Container(
        height: size.height * 0.15,
        width: size.height * 0.15,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(imagepath), fit: BoxFit.cover)),
      ),
      Spacer(),
      customtext(name, 15)
    ],
  );
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
