import 'package:flutter/material.dart';
import 'package:proy_2/src/page/alert_page.dart';
import 'package:proy_2/src/page/avatar_page.dart';
import 'package:proy_2/src/page/home_page.dart';
import 'package:proy_2/src/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,

      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings ){
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },


    );
  }
}