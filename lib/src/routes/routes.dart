import 'package:flutter/material.dart';

import 'package:proy_2/src/page/alert_page.dart';
import 'package:proy_2/src/page/avatar_page.dart';
import 'package:proy_2/src/page/home_page.dart';


Map<String, WidgetBuilder> getAplicationRoutes (){
  return <String, WidgetBuilder>{
  '/'      : (BuildContext context) => HomePage(),
  'alert'  : (BuildContext context) => AlertPage(),
  'avatar' : (BuildContext context) => AvatarPage(),
  };
}


