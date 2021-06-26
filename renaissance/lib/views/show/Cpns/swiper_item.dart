import 'package:flutter/material.dart';

// 引入轮播图插件
import 'package:flutter_swiper/flutter_swiper.dart';


class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {

  // 轮播图片
  List<Map> imageList = [
    {
      "url":"http://www.itying.com/images/flutter/1.png"
    },
    {
      "url":"http://www.itying.com/images/flutter/2.png"
    },
    {
      "url":"http://www.itying.com/images/flutter/3.png"
    },
    {
      "url":"http://www.itying.com/images/flutter/4.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Swiper")),
        body:Column(
            children:<Widget>[
              Container(
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: new Swiper(
                      layout: SwiperLayout.CUSTOM,
                      customLayoutOption:new CustomLayoutOption(startIndex: -1, stateCount: 3).addRotate(
                          [-45.0 / 180, 0.0, 45.0 / 180]
                      ).addTranslate(
                          [
                            new Offset(-370.0, -40.0),
                            new Offset(0.0, 0.0),
                            new Offset(370.0, -40.0)
                          ]
                      ),
                      itemWidth: 300.0,
                      itemHeight: 200.0,
                      itemBuilder: (context, index) {
                        return new Container(
                          child: new Center(
                            // 配置图片地址
                              child: Image.network(imageList[index]['url'],fit: BoxFit.contain,)
                          ),
                        );
                      },
                      // 配置图片数量
                      itemCount: imageList.length
                  ),
                ),
              )
            ]
        )
    );
  }
}