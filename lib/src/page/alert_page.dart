import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar Alerta'),
          color: Colors.blue[300],
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlerta(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(        
        child: Icon(Icons.arrow_back),
        onPressed: () {        
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: true,

      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder (borderRadius: BorderRadius.circular(15.0)),
          title: Text('titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('este es el contenido de la caja de a alerta'),
              FlutterLogo(size: 100.0,)
            ],
          ),
          actions: <Widget>[
            FlatButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text('cancelar')
            ),
            FlatButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text('ok')
            ),
          ],
        );
      } ,
    );
  }


}