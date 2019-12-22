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
  final List<String> _animations = [
    '4_to_5',
    '5_to_6',
    '6_to_7',
    '7_to_8',
    '8_to_3',
    '3_to_4',
  ];

  int _animationIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Sample 02'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              width: 300.0,
              height: 300.0,
              child: FlareActor(
                'images/path_morph.flr',
                fit: BoxFit.contain,
                animation: _animationIndex != null
                    ? _animations[_animationIndex]
                    : null,
              ),
            ),
          ),
          FloatingActionButton(
            child: Icon(Icons.autorenew),
            onPressed: () {
              setState(() {
                if (_animationIndex == null ||
                    _animationIndex == _animations.length - 1) {
                  _animationIndex = 0;
                } else {
                  _animationIndex++;
                }
              });
            },
          )
        ],
      ),
    );
  }
}
