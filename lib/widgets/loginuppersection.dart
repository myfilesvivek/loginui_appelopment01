import 'package:flutter/material.dart';

class UpperSectionLoging extends StatelessWidget {
  final String pageName;
   final   double postion;
  

  UpperSectionLoging({this.pageName,this.postion = 25});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 190,
          child: Image.asset(
            'assets/images/bg_1.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: double.infinity,
          height: 240,
          child: Image.asset(
            'assets/images/upbg_2.png',
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          right: 9,
          top: 40,
          child: Container(
              width: 150,
              height: 130,
              child: Image(
                image: AssetImage('assets/images/pcman1.png'),
              )),
        ),
        Positioned(
          bottom: postion,
          left: 30,
          child: Text(
            pageName,
            style: TextStyle(
                color: Color.fromRGBO(38, 97, 250, 1),
                fontSize: 35,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
