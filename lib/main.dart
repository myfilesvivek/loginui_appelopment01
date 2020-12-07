import 'package:flutter/material.dart';
import 'package:loginui_appelopment01/screens/registrationscreen.dart';
import 'screens/loginscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      title: 'Login Ui 1',
      theme: ThemeData(
       primarySwatch: Colors.indigo,
      
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}


