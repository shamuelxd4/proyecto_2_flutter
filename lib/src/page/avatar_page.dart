import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://i.blogs.es/800498/portada/450_1000.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SQC'),
              backgroundColor: Colors.green[300],
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://depor.com/resizer/E-7nBwOQ-WRx8w10Ym4C7jpvimY=/980x528/smart/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/IQNOFTHPIRHD3DP5SDPOP4EZ3E.jpg')
        ),
      ),
    );
  }
}