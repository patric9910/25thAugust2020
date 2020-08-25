import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomSize1(),
    ));

class CustomSize1 extends StatelessWidget {
  CustomSize1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-253.0, -53.0),
            child:
                // Adobe XD layer: 'pexels-jeffrey-czum…' (shape)
                Container(
              width: 615.5,
              height: 793.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(
                      'assets/pexels-jeffrey-czum-2760856.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(248.0, -94.0),
            child: Container(
              width: 671.0,
              height: 326.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffcdcbe4),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-431.0, 233.0),
            child: Container(
              width: 546.0,
              height: 265.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffc8e6e8),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-396.0, 200.0),
            child: Container(
              width: 504.0,
              height: 287.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x8fc8e6e8),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(248.0, -53.0),
            child: Container(
              width: 671.0,
              height: 326.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x78cdcbe4),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(134.0, 256.0),
            child: Container(
              width: 213.0,
              height: 42.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(21.0),
                  bottomLeft: Radius.circular(21.0),
                ),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(138.0, 317.0),
            child: Container(
              width: 213.0,
              height: 42.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(21.0),
                  bottomLeft: Radius.circular(21.0),
                ),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(155.0, 256.0),
            child: Text(
              'username',
              style: TextStyle(
                fontFamily: 'Poor Richard',
                fontSize: 29,
                color: const Color(0xff7873ba),
                letterSpacing: 1.827,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(155.0, 317.0),
            child: Text(
              'password',
              style: TextStyle(
                fontFamily: 'Poor Richard',
                fontSize: 29,
                color: const Color(0xff7873ba),
                letterSpacing: 1.827,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(156.0, 383.0),
            child: SizedBox(
              width: 85.0,
              height: 66.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(15.0, 0.0, 70.0, 66.0),
                    size: Size(85.0, 66.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0x8f4b7cb5),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 77.0, 66.0),
                    size: Size(85.0, 66.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xff88a7cb),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(15.0, 18.0, 46.0, 21.0),
                    size: Size(85.0, 66.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Poor Richard',
                        fontSize: 19,
                        color: const Color(0xfffcfcfc),
                        letterSpacing: 1.197,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(254.0, 383.0),
            child: SizedBox(
              width: 85.0,
              height: 66.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(15.0, 0.0, 70.0, 66.0),
                    size: Size(85.0, 66.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0x8f4b7cb5),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 77.0, 66.0),
                    size: Size(85.0, 66.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xff88a7cb),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 20.0, 57.0, 20.0),
                    size: Size(85.0, 66.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'SignUp',
                      style: TextStyle(
                        fontFamily: 'Poor Richard',
                        fontSize: 18,
                        color: const Color(0xfffcfcfc),
                        letterSpacing: 1.134,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
