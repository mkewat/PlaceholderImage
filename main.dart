import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PlaceHolder(),
    );
  }
}

class PlaceHolder extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PlaceHolderState();
  }
}

class PlaceHolderState extends State<PlaceHolder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PlaceHolder Image'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 05, top: 03, right: 05.0, bottom: 03.0),
          height: 270.0,
          width: 510,
          color: Colors.black26,
          child: FadeInImage(
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2020/05/19/05/42/weaver-5189346_960_720.jpg'),
            placeholder: AssetImage('assets/placeholder-image.png'),
          ),
        ),
      ),
    );
  }
}
