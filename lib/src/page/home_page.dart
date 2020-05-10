import 'package:flutter/material.dart';
import 'package:proy_2/src/providers/menu_provider.dart';
import 'package:proy_2/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
          );
        }
      
  Widget _lista() {

    //menuProvider.cargarData()

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [] ,
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){

        return ListView(
          children: _listaItems( snapshot.data ),
        );

      },
    );


    
  }
      
  List<Widget> _listaItems( List<dynamic> data) {
    
    final List<Widget> opciones = [];

    data.forEach((element) {
      
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.arrow_right),
        onTap: () {
          
        },
      );

      opciones..add(widgetTemp)
              ..add( Divider());

    });

    return opciones;

  }
}