import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['uno','dos','tres','cuatro','cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes temp'),
      ),
      body: ListView(
        children: _crearItemsCorta()
      ),
    );
  }
/*
  List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {      
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
           ..add(Divider());      

    }
    return lista;
  }
*/
  List<Widget> _crearItemsCorta() {
    return opciones.map(( item ){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item+'!'),
            subtitle: Text('hola a todos'),
            leading: Icon(Icons.ac_unit, size: 50.0,),
            trailing: Icon(Icons.arrow_right, size: 50.0,),
            onTap: (){ },
          ),
          Divider()
        ],
      );
    }).toList();

  }



}