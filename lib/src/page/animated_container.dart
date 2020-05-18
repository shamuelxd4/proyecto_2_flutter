import 'dart:math';

import 'package:flutter/material.dart';


class AnimatedContainerPage extends StatefulWidget {

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _widht = 50.0;
  double _height = 50.0;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  Color _color = Colors.pink;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animate Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _widht,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color
          ),
          
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.rotate_right),
        onPressed: _cambiarForma
      ),
    );
  }

  void _cambiarForma(){    
    final random = Random();
    setState(() {
      _widht = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
        random.nextInt(300),
        random.nextInt(300),
        random.nextInt(300),
        1);
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }


}