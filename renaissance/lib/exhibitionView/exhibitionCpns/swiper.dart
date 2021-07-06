import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ExhibitionSwiper extends StatelessWidget{
  List ImageList=[
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg3.artimg.net%2F201909%2Fm8VuaJxYHgWsblapN3V98famdW3cKQtRlbdTYBzX.jpg&refer=http%3A%2F%2Fimg3.artimg.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1627361256&t=29ca3a876ae83f4de1faa1a8fd10369a",
    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.86mlzg.com%2FupFiles%2FinfoImg%2F201905%2F201905241429167342.jpg&refer=http%3A%2F%2Fwww.86mlzg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1627361403&t=79ab4a6882ca551a4007b4ded3601463"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.0,
      child: new Swiper(
        // 横向
        scrollDirection: Axis.horizontal,
        // 布局构建
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            ImageList[index],
            fit: BoxFit.fill,
          );
        },
        //条目个数
        itemCount: ImageList.length,
        // 自动翻页
        autoplay: true,
        // 分页指示
        pagination: buildSwiperPagination(),
        //点击事件
        onTap: (index) {
          print(" 点击 " + index.toString());
        },
        // 视窗比例
        viewportFraction: 0.8,
        // 布局方式
        //layout: SwiperLayout.STACK,
        // 用户进行操作时停止自动翻页
        autoplayDisableOnInteraction: true,
        // 无线轮播
        loop: true,
        scale: 0.9,
      ),
    );
  }

  buildSwiperPagination() {
    // 分页指示器
    return SwiperPagination(
      //指示器显示的位置
      alignment: Alignment.bottomCenter, // 位置 Alignment.bottomCenter 底部中间
      // 距离调整
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
      // 指示器构建
      builder: DotSwiperPaginationBuilder(
        // 点之间的间隔
          space: 2,
          // 没选中时的大小
          size: 8,
          // 选中时的大小
          activeSize: 9,
          // 没选中时的颜色
          color: Colors.black54,
          //选中时的颜色
          activeColor: Colors.white),
    );
  }
}