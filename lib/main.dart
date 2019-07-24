import 'package:flutter/material.dart';

<<<<<<< HEAD
class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  final String title;
  final String message;


  PassArgumentsScreen({
    Key key,
    @required this.title,
    @required this.message,
  }) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text(message),
        ),
=======
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
>>>>>>> 94a9026... begining start learning with flutter
    );
  }
}

<<<<<<< HEAD
class ScreenArguments {
  final String title;
  final String message;
  
  ScreenArguments(this.title, this.message);
=======
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
>>>>>>> 94a9026... begining start learning with flutter
}