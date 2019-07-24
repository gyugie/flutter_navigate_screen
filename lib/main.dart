import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      title: "Navigations Basic",
      initialRoute: '/',
      routes: {
        '/' : (context) => FirstRoute(),
        '/second' : (context) => SecondRoute(),
      },
    ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Open Route'),
          onPressed: (){
            //Navigate to second route when tapped
              Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            //navigate back to first route when tappef
            Navigator.pop(context);
          },
          child: Text('Go Back!'),
          ),
        ),
    );
  }
}