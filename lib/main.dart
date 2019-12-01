import 'package:flutter/material.dart';
import 'package:flutter_ui_samples/ui/animation_sample_01.dart';
import 'package:flutter_ui_samples/ui/counter_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI Samples'),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('Animation Sample 01'),
            onTap: () {
              Navigator.push(context, AnimationSample01Page.createPageRoute());
            },
          ),
          ListTile(
            title: Text('Counter'),
            onTap: () {
              Navigator.push(context, CounterPage.createPageRoute());
            },
          )
        ],
      ),
    );
  }
}
