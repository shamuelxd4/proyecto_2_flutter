import 'package:flutter/material.dart';

import 'package:proy_2/src/page/alert_page.dart';
import 'package:proy_2/src/page/animated_container.dart';
import 'package:proy_2/src/page/avatar_page.dart';
import 'package:proy_2/src/page/card_page.dart';
import 'package:proy_2/src/page/home_page.dart';
import 'package:proy_2/src/page/input_Page.dart';


Map<String, WidgetBuilder> getAplicationRoutes (){
  return <String, WidgetBuilder>{
  '/'      : (BuildContext context) => HomePage(),
  'alert'  : (BuildContext context) => AlertPage(),
  'avatar' : (BuildContext context) => AvatarPage(),
  'card'   : (BuildContext context) => CardPage(),
  'animatedContainer'   : (BuildContext context) => AnimatedContainerPage(),
  'inputs'   : (BuildContext context) => InputPage(),

  };
}


