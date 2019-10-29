import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:vector_math/vector_math_64.dart';

class AnimationPage extends StatefulWidget {
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  double containerSize = 300;
  double containerTranslationY = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            buildAnimationWidget(),
            buildChangeStuffButton(context)
          ],
        ),
      ),
    );
  }

  Widget buildAnimationWidget() {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.easeOutCirc,
      width: containerSize,
      height: containerSize,
      transform: Matrix4.translation(Vector3(0, containerTranslationY, 0)),
      padding: EdgeInsets.all(30),
      child: Image.asset('assets/resocoder.png'),
    );
  }

  RaisedButton buildChangeStuffButton(BuildContext context) {
    return RaisedButton(
      child: Text('Change Stuff'),
      onPressed: () {
        setState(() {
          containerSize = 200 + math.Random().nextInt(100).toDouble();
          containerTranslationY = math.Random().nextInt(100).toDouble();
        });
      },
    );
  }
}
