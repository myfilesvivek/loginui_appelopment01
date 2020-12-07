import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:loginui_appelopment01/constnats.dart';
import 'package:loginui_appelopment01/screens/registrationscreen.dart';
import 'package:loginui_appelopment01/widgets/loginuppersection.dart';
import 'package:loginui_appelopment01/widgets/lowersectionlogin.dart';
import '../widgets/Inputfielduser.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isHiddenPassword = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void checkValidation() {
    if (formKey.currentState.validate()) {
      print('Validated');
    } else {
      print('Not Validated');
    }
  }


  void _clickLogin() {
    checkValidation();
  }

  void signUpNav() {
    print('SignUp Page Nav');
      Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrationScreen()));

  }

  void _forgetYourPassword() {
    print('Forget your password');
  }

  void _toggleHiddenPassword() {
    setState(() {
      _isHiddenPassword = !_isHiddenPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UpperSectionLoging(
            pageName: 'LOGIN',
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InputfieldUser(
                        inputName: 'Username',
                        validatiorch: MultiValidator([
                          RequiredValidator(errorText: 'email address required'),
                          EmailValidator(
                              errorText: 'enter a valid email address'),
                        ])),
                    InputfieldUser(
                      validatiorch: MinLengthValidator(6,
                          errorText: 'password must be at least 6 digits long'),
                      inputName: 'Password',
                      obscureTexttype: _isHiddenPassword,
                      suffixIconInput: _isHiddenPassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      onPressed: _toggleHiddenPassword,
                    ),
                    GestureDetector(
                        onTap: _forgetYourPassword,
                        child: Text(
                          'Forget your Password',
                          style:
                              vTextStyleDontHaveAccount.copyWith(fontSize: 12),
                        )),
                  ],
                ),
              )),
          Flexible(
            
            child: LowerSectionLogin(
              buttonTopMr: 50,
              buttonName: 'LOGIN',
              accountInfo: 'Don\'t have an account? Sign up',
              onPressedLS: _clickLogin,
              signUpOnPressed: signUpNav,
            ),
          ),  
        ],
      ),
    );
  }
}
