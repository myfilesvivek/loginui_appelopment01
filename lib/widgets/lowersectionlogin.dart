import 'package:flutter/material.dart';
import 'package:loginui_appelopment01/constnats.dart';
import 'package:loginui_appelopment01/widgets/roundedbutton.dart';

class LowerSectionLogin extends StatelessWidget {
  final String buttonName;
  final String accountInfo;
  final Function onPressedLS;
  final Function signUpOnPressed;
   final double buttonTopMr;

  LowerSectionLogin(
      {this.buttonName,
      this.accountInfo,
      this.onPressedLS,
      this.signUpOnPressed,
      this.buttonTopMr = 0});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          child: Image.asset(
            'assets/images/bottombg_1.png',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: double.infinity,
          child: Image.asset(
            'assets/images/bottombg_2.png',
            fit: BoxFit.fill,
          ),
        ),
        Align(
          alignment: Alignment(1, 0),
          child: Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.only(
              right: 30,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RoundedButton(buttontext: buttonName, onPressed: onPressedLS,buttonTopMargin: buttonTopMr,),
                SizedBox(height: 15,),
                GestureDetector(
                  onTap: signUpOnPressed,
                  child: Text(accountInfo, style: vTextStyleDontHaveAccount),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
