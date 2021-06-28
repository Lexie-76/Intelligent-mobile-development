import 'package:flutter/material.dart';
import 'package:renaissance/Component/constant.dart' as CONSTANT;

class storyHead extends StatelessWidget {
  const storyHead({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -CONSTANT.appBarHeight),
      child: Container(
        child: ClipPath(
          clipper: MyClipper(),
          child: Stack(
            children: <Widget>[
              // FadeInImage(
              //   width: MediaQuery.of(context).size.width,
              //   image: NetworkImage('https://picsum.photos/200?random'),
              //   fit: BoxFit.fill,
              //   placeholder: AssetImage('assets/images/loading.gif'),
              // ),
              Opacity(
                opacity: 0.4,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/show_page/medici.png"),
                      fit: BoxFit.fitHeight
                    )
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, 50),
                child: ListTile(
                  // leading: CircleAvatar(
                  //   backgroundImage: NetworkImage(CONSTANT.userAvatar),
                  // ),
                  // title: Text(
                  //   CONSTANT.userName,
                  //   style: CONSTANT.defaultTextStyle,
                  //   textScaleFactor: 1.5,
                  // ),
                  // subtitle: Text(
                  //   CONSTANT.userProfile,
                  //   style: CONSTANT.defaultTextStyle,
                  // ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // double roundnessFactor = 150.0;
    Path path = Path();
    // p.lineTo(size.width, 0.0);
    // p.lineTo(size.width, size.height / 3.75);
    // p.lineTo(size.width, size.height / 8);
    // p.lineTo(0.0, size.height / 3.75);
    // //画直线到B点 同时也充当 下一个二阶贝塞尔曲线 的起点
    // p.lineTo(0, size.height - roundnessFactor);
    //
    // //二阶贝塞尔曲线 只有一个控制点
    // // 控制点 C (0, size.height)
    // // 终点 D (roundnessFactor, size.height)
    // p.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    //
    // //二阶贝塞尔曲线 只有一个控制点
    // //画直线到 E点 同时也充当 二阶贝塞尔曲线 的起点
    // p.lineTo(size.width - roundnessFactor, size.height);
    // // 控制点 F (size.width, size.height)
    // // 终点 G (size.width, size.height - roundnessFactor)
    // p.quadraticBezierTo(
    //     size.width, size.height, size.width, size.height - roundnessFactor);
    //
    // //二阶贝塞尔曲线 只有一个控制点
    // //画直线到 H 点 同时也充当 二阶贝塞尔曲线 的起点
    // p.lineTo(size.width, roundnessFactor * 2);
    // // 控制点 M 与 终点 K
    // p.quadraticBezierTo(size.width - 10, roundnessFactor,
    //     size.width - roundnessFactor * 1.5, roundnessFactor * 1.5);
    //
    // //二阶贝塞尔曲线 只有一个控制点
    // //画直线到 T点 同时也充当 二阶贝塞尔曲线 的起点
    // p.lineTo(
    //     roundnessFactor * 0.6, size.height * 0.33 - roundnessFactor * 0.3);
    // //控制点 W Z
    // p.quadraticBezierTo(
    //     0, size.height * 0.33, 0, size.height * 0.33 + roundnessFactor);

    path.moveTo(60, 0);
    // 二阶贝塞尔曲线画弧
    path.quadraticBezierTo(0, 0, 0, 0);
    // 连接到底部
    path.lineTo(0, size.height / 3.75);
    // 三阶贝塞尔曲线画弧
    path.cubicTo(size.width / 12, size.height, size.width / 12 * 3, size.height / 8, size.width, size.height / 3.75);
    // 再连接回去
    path.lineTo(size.width, 60);
    // 再用二阶贝塞尔曲线画弧
    path.quadraticBezierTo(size.width , 0, size.width , 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
