
import 'package:flutter/material.dart';
import 'package:renaissance/views/show/Cpns/occur_ani.dart';
import 'package:renaissance/views/show/Cpns/swiper_item.dart';
import 'package:renaissance/views/show/artist.dart';
import 'package:renaissance/views/show/history.dart';
import 'package:renaissance/views/show/museum.dart';
import 'package:renaissance/views/show/story.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Show extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("展览墙"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildStyle1(),
            SizedBox(height:20),
            TabPage3(),
            // Text("———————— 文艺复兴 ————————",style: TextStyle(color: Colors.grey, fontFamily: "ZhiMangXing", fontSize: 20),),
            SizedBox(height:50),
            Card(context)
          ],
        )
      )
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
          activeSize: 8,
          // 没选中时的颜色
          color: Colors.black54,
          //选中时的颜色
          activeColor: Colors.white),
    );
  }
  
  List ImageList=[
        "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg3.artimg.net%2F201909%2Fm8VuaJxYHgWsblapN3V98famdW3cKQtRlbdTYBzX.jpg&refer=http%3A%2F%2Fimg3.artimg.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1627361256&t=29ca3a876ae83f4de1faa1a8fd10369a",
        "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.86mlzg.com%2FupFiles%2FinfoImg%2F201905%2F201905241429167342.jpg&refer=http%3A%2F%2Fwww.86mlzg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1627361403&t=79ab4a6882ca551a4007b4ded3601463"
      ];


  Widget buildStyle1() {
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
        itemCount: 2,
        // 自动翻页
        autoplay: true,
        // 分页指示
        pagination: buildSwiperPagination(),
        //点击事件
        onTap: (index) {
          print(" 点击 " + index.toString());
        },
        // 视窗比例
        viewportFraction: 1,
        // 布局方式
        //layout: SwiperLayout.STACK,
        // 用户进行操作时停止自动翻页
        autoplayDisableOnInteraction: true,
        // 无线轮播
        loop: true,
        scale: 1,
      ),
    );
  }

  Widget Card(BuildContext context){
    return Container(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>History())
                );
              },
              child:cardItem("历","史","轴", "思想解放运动和人文主义","card1"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>Museum())
                );
              },
              child: cardItem("博","物","馆", "文艺复兴时期的艺术成就","card2"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>Artist())
                );
              },
              child: cardItem("名","人","堂", "代表人物与杰出的艺术家","card3"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>Story())
                );
              },
              child: cardItem("故","事","会", "文艺复兴背后的神秘家族","card4"),
            ),
          ],
        )
    );
  }
  Widget cardItem(String letter1, String letter2, String letter3, String intro,String pic){

    return Container(
      padding: EdgeInsets.fromLTRB(10, 50, 10, 5),
      decoration: BoxDecoration(
        image:DecorationImage(
          image: AssetImage("assets/images/show_page/${pic}.png"),
          fit: BoxFit.cover
        ),
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          cardTitle(letter1,letter2,letter3),
          SizedBox(height:20),
          cardTag(),

        ],
      ),
    );
  }

  Widget cardTitle(String letter1, String letter2, String letter3){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(letter1,style: TextStyle(color:Colors.black,fontSize: 50,fontFamily: "ZhiMangXing"),),
          Text(letter2,style: TextStyle(color:Colors.black,fontSize: 50,fontFamily: "ZhiMangXing"),),
          Text(letter3,style: TextStyle(color:Colors.black,fontSize: 50,fontFamily: "ZhiMangXing"),)
        ],
      ),
    );
  }

  Widget cardTag(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Renaissance",style: TextStyle(color:Colors.white,fontFamily: "DancingScript"),)
        ],
      ),
    );
  }

}
