import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class AnimationSample02Page extends StatefulWidget {
  static PageRoute createPageRoute() {
    return MaterialPageRoute(
      builder: (context) => AnimationSample02Page(),
    );
  }

  @override
  _AnimationSample02PageState createState() => _AnimationSample02PageState();
}

class _AnimationSample02PageState extends State<AnimationSample02Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Sample 02'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          width: 300.0,
          height: 300.0,
          child: FlareActor(
            'images/path_morph_sample.flr',
            animation: 'polygon_morph',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
