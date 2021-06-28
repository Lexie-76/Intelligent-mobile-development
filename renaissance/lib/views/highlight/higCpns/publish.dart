
import 'package:flutter/material.dart';

class Publish extends StatelessWidget {
  var  _gradientValue = 0.5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("交流圈"),
        ),
        body:ShaderMask(

          shaderCallback:(Rect bounds) {
            return LinearGradient(
                colors: <Color>[Colors.blueGrey, Colors.deepOrangeAccent,Colors.yellow],
                stops: [
                  0 + _gradientValue * 0.2,
                  _gradientValue * 0.8,
                  1 - _gradientValue * 0.3
                ]
            ).createShader(bounds);
            // return RadialGradient(
            //   center: Alignment.topLeft,
            //   radius: 1.0,
            //   colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
            //   tileMode: TileMode.mirror,
            // ).createShader(bounds);
          },
          blendMode: BlendMode.srcATop,
          child: Text('老孟，一枚有态度的程序员',style: TextStyle(color:Colors.white, fontSize: 30),),
        )

    );
  }
}

