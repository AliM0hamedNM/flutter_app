import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/login.dart';
import 'package:myfirstapp/pages/signup.dart';
import 'package:myfirstapp/pages/welcome.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  get initialRoute => '/';
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        
       
        '/':(context) => const Welcome(),
        '/login': (context) => const Login(),
        '/signup' : (context) => const Signup(),
      },
    );
  }
}