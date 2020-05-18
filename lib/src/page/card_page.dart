import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo3(),
          SizedBox(height: 30.0,),
          _cardTipo4(),
          SizedBox(height: 30.0,),
          _cardTipo5(),
          SizedBox(height: 30.0,),
          _cardTipo6(),
        ],
      ),
    );
  }

  final shapeSize = RoundedRectangleBorder (borderRadius: BorderRadius.circular(15.0));
          
  Widget _cardTipo1() {
    return Card(
      elevation: 9.0,
      shape: shapeSize,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.green, size: 50.0,),
            title: Text('soy el titulo de esta tarjeta'),
            subtitle: Text('loren soy el titulo de esta tarjeta soy el titulo de esta tarjeta soy el titulo de esta tarjeta10'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(                
                child: Text('cancelar'),
                onPressed: (){},
              ),
              FlatButton(                
                child: Text('okey'),
                onPressed: (){},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(

      elevation: 9.0,
      shape: shapeSize,
      clipBehavior: Clip.antiAlias,
      
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'), 
            image: NetworkImage('https://wallpaperplay.com/walls/full/d/3/6/13585.jpg'),
            height: 250,
            fit: BoxFit.cover,
          ),          
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('datos 2'),
          ),
        ],
      ),
    );
  }

  Widget _cardTipo3() {
    return Card(
      elevation: 9.0,
      shape: shapeSize,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.green, size: 50.0,),
            title: Text('soy el titulo de esta tarjeta'),
            subtitle: Text('loren soy el titulo de esta tarjeta soy el titulo de esta tarjeta soy el titulo de esta tarjeta10'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(                
                child: Text('cancelar'),
                onPressed: (){},
              ),
              FlatButton(                
                child: Text('okey'),
                onPressed: (){},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo4() {
    return Card(

      elevation: 9.0,
      shape: shapeSize,
      clipBehavior: Clip.antiAlias,

      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'), 
            image: NetworkImage('https://wallpaperplay.com/walls/full/d/3/6/13585.jpg'),
            height: 250,
            fit: BoxFit.cover,
          ),          
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('datos 4'),
          ),
        ],
      ),
    );
  }
  
  Widget _cardTipo5() {
    return Card(
      elevation: 9.0,
      shape: shapeSize,

      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.green, size: 50.0,),
            title: Text('soy el titulo de esta tarjeta'),
            subtitle: Text('loren soy el titulo de esta tarjeta soy el titulo de esta tarjeta soy el titulo de esta tarjeta10'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(                
                child: Text('cancelar'),
                onPressed: (){},
                
              ),
              FlatButton(                
                child: Text('okey'),
                onPressed: (){},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo6() {
    return Card(

      elevation: 9.0,
      shape: shapeSize,
      clipBehavior: Clip.antiAlias,

      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'), 
            image: NetworkImage('https://wallpaperplay.com/walls/full/d/3/6/13585.jpg'),
            height: 250,
            fit: BoxFit.cover,
          ),          
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('datos 6'),
          ),
        ],
      ),
    );
  }


}