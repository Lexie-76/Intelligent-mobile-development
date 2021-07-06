import 'package:flutter/material.dart';

import 'articleCpns/article_head.dart';

class Article extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String str = """达芬奇，出生在佛罗伦萨一个富裕的公证人家庭。从小就对绘画有着天赋，后来师从乔托。而乔托就是佛罗伦萨著名的圣母百花大教堂的钟楼设计者，那个钟楼因此也被命名为“乔托钟楼”。
            达芬奇的前半生都是在他的老家佛罗伦萨度过的，也就是在那时他创作了旷世巨作“蒙娜丽萨的微笑”。现在这幅画的真迹保存在法国的卢浮宫，后来我到法国的时候真的看到了这幅作品。
            这么伟大的作品是怎么创造出来的？这里向大家介绍一下它的历史背景。我们在欧洲参观的教堂，包括梵蒂冈圣彼得大教堂、德国科隆大教堂等看到的雕塑绘画作品只有一个主线，那就是宗教，作品里讲述的也只有圣经的故事，人物也都是神来的，没有一个普通人。而达芬奇的“蒙娜丽莎的微笑”中开创性的塑造了一个真实的佛罗伦萨的普通妇女，这在文艺复兴时期是个里程碑的意义，也就是从达芬奇开始，艺术家们给普通人画像了。
            那么佛罗伦萨的这个普通妇女怎么又成了达芬奇笔下的“蒙娜丽莎的微笑”中的主角？
            相传画中妇女的原型刚刚痛失了自己的爱女，达芬奇在给她画像时利用各种办法想博得她一笑，就在她嘴角露出一丝微笑的瞬间，被达芬奇定格了，这个瞬间的微笑后来被称为永恒的微笑。
            达芬奇后半生是在米兰度过的，在这个时期他完成了一幅享誉世界的大作“最后的晚餐”，这幅画当初是画在圣玛利亚教堂一个餐厅的墙壁上一幅壁画。
            达芬奇后半生没有放在绘画方面，而是致力于自然科学的研究上。所以我们称达芬奇不仅是画鸡蛋的艺术家，更是伟大的科学家，在科学近代史上是一个万能的科学巨人。他的研究领域包罗万象，虽然最后没有取得像样的成果，但后来的科学家的许多发明创造都是采用达芬奇的原理和脉搏而取得。像伽利略、牛顿、 哥白尼无一不受惠于达芬奇的当时的科学方法和试验方式。""";
    return Scrollbar( // 显示进度条
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              ArticleHead("assets/images/person_page/welcome.png","贝多芬","1941-1988"),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(str,style: TextStyle(fontFamily: "ZhiMangXing",fontSize: 25),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0,bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.star,color: Colors.yellow,size: 30,),
                        SizedBox(height: 5,),
                        Text("收藏")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.favorite,color: Colors.red,size:30),
                        SizedBox(height: 5,),
                        Text("点赞")
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}