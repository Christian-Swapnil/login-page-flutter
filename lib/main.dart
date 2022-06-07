import 'package:flutter/material.dart';
import 'package:login/index.dart';
import 'package:login/loginpage.dart';
import 'package:login/register.dart';


void main()  {
 

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'loginpage',
    routes: {
      'loginpage': (context) => MyLogin(),
      'register': (context) => MyRegister(),
      'index': (context) => index(),
      
    },
  ));
}
