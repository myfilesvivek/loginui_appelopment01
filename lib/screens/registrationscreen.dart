import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:loginui_appelopment01/constnats.dart';
import 'package:loginui_appelopment01/screens/loginscreen.dart';
import 'package:loginui_appelopment01/widgets/loginuppersection.dart';
import 'package:loginui_appelopment01/widgets/lowersectionlogin.dart';
import '../widgets/Inputfielduser.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
    Navigator.pop(context);
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
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              UpperSectionLoging(
                pageName: 'REGISTER',
                postion: 115,
              ),
              Container(
                margin: EdgeInsets.only(top: 120),
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InputfieldUser(
                        inputName: 'Name',
                        validatiorch: MultiValidator(
                          [
                            RequiredValidator(
                                errorText: 'enter your name'),
                           
                          ],
                        ),
                      ),
                      InputfieldUser(
                        inputName: 'Mobile Number',
                        validatiorch: MultiValidator(
                          [
                            RequiredValidator(
                                errorText: 'enter phonenumber required'),
                            MinLengthValidator(10, errorText: 'enter valid phone number')
                          ],
                        ),
                      ),
                      InputfieldUser(
                        inputName: 'Email',
                        validatiorch: MultiValidator(
                          [
                            RequiredValidator(
                                errorText: 'email address required'),
                            EmailValidator(
                                errorText: 'enter a valid email address'),
                          ],
                        ),
                      ),
                      InputfieldUser(
                        validatiorch: MinLengthValidator(6,
                            errorText:
                                'password must be at least 6 digits long'),
                        inputName: 'Password',
                        obscureTexttype: _isHiddenPassword,
                        suffixIconInput: _isHiddenPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        onPressed: _toggleHiddenPassword,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: LowerSectionLogin(
              buttonName: 'SIGNUP',
              accountInfo: 'Already have a account? Sign In',
              onPressedLS: _clickLogin,
              signUpOnPressed: signUpNav,
            ),
          ),
        ],
      ),
    );
  }
}
