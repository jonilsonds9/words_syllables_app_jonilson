import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  List<Widget> listWords(){
    var words = nouns.take(10);

    List <Widget> listTile = List<Widget>();
    words.forEach((element) {
      var size = syllables('$element');

      listTile.add(
        ListTile(
          title: Text('$element'),
          trailing: Text('$size'),
        ),
      );
    });

    return listTile;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          title: Text('Palavras e sílabas'),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: ListView(
            children: listWords(),
          ),
        ),
      ),
    );
  }
}