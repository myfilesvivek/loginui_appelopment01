import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final buttontext;
  double buttonTopMargin;
  final Function onPressed;
  


  RoundedButton({this.buttontext,this.onPressed,this.buttonTopMargin =0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ,
          child: Container(
            margin: EdgeInsets.only(top: buttonTopMargin),         
          padding: EdgeInsets.symmetric(vertical: 23, horizontal: 70),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(252, 136, 34, 1),
                  Color.fromRGBO(255, 177, 41, 1)
                ]),
          ),
          
                      child: Text(
              buttontext,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
            ),
          )
    );
  }
}
