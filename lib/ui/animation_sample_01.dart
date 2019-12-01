import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class AnimationSample01Page extends StatefulWidget {
  static PageRoute createPageRoute() {
    return MaterialPageRoute(
      builder: (context) => AnimationSample01Page(),
    );
  }

  @override
  _AnimationSample01PageState createState() => _AnimationSample01PageState();
}

class _AnimationSample01PageState extends State<AnimationSample01Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Sample 01'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          width: 100.0,
          height: 100.0,
          child: FlareActor(
            'images/check_tutorial.flr',
            animation: 'Checkmark Appear',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
