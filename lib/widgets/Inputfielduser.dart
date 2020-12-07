import 'package:flutter/material.dart';

class InputfieldUser extends StatelessWidget {
  final String inputName;
  final bool obscureTexttype;
  final IconData suffixIconInput;
  final Function onPressed;
  final Function validatiorch;

  InputfieldUser(
      {this.inputName, this.obscureTexttype = false, this.suffixIconInput,this.onPressed,this.validatiorch});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: TextFormField(
          validator: validatiorch,
          obscureText: obscureTexttype,
          decoration: InputDecoration(
              labelText: inputName,
              suffixIcon: InkWell(
                onTap: onPressed ,
                  child: Icon(
                suffixIconInput,
                size: 17,
              ))),
        ));
  }
}
