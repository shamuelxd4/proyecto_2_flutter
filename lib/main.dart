import 'package:flutter/material.dart';
import 'package:proy_2/src/page/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      home: HomePageTemp()
    );
  }
}