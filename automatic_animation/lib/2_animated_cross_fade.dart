import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:vector_math/vector_math_64.dart';

class AnimationPage extends StatefulWidget {
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  bool showingFirstWidget = true;

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
    return AnimatedCrossFade(
      firstChild: Image.asset('assets/resocoder.png'),
      secondChild: FlutterLogo(
        size: MediaQuery.of(context).size.width / 1.5,
      ),
      duration: Duration(seconds: 1),
      sizeCurve: Curves.easeInCubic,
      crossFadeState: showingFirstWidget
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
    );
  }

  RaisedButton buildChangeStuffButton(BuildContext context) {
    return RaisedButton(
      child: Text('Change Stuff'),
      onPressed: () {
        setState(() {
          showingFirstWidget = !showingFirstWidget;
        });
      },
    );
  }
}
