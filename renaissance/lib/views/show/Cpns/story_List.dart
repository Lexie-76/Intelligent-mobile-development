import 'package:flutter/material.dart';
import 'package:renaissance/Component/constant.dart' as CONSTANT;



var styles = {
  'title': TextStyle(
    color: Colors.grey.shade800,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  ),
  'content': TextStyle(
    color: Colors.grey.shade500,
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
  ),
};

class storyList extends StatelessWidget {
  const storyList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = CONSTANT.data;
    var offset = 0.1050;
    return Transform.translate(
      offset: new Offset(0.0, MediaQuery.of(context).size.height * offset),
      child: Container(
        height: MediaQuery.of(context).size.height * (1 - offset) -
            CONSTANT.appBarHeight,
        child: ListView.builder(
          padding: const EdgeInsets.all(0.0),
          itemCount: data.length,
          itemBuilder: (BuildContext content, int index) {
            return AwesomeListItem(
              index: index,
            );
          },
        ),
      ),
    );
  }
}

class AwesomeListItem extends StatelessWidget {
  final int index;

  AwesomeListItem({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = CONSTANT.data[index];
    return InkWell(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => DetailsPage(index: index)),
      //   );
      // },
      child: Row(
        children: <Widget>[
          Container(width: 10.0, height: 50.0, color: data.color),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 80, 20, 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    data.title,
                    style: styles['title'],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      data.content,
                      style: styles['content'],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 180.0,
            width: 250.0,
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: new Offset(50.0, 0.0),
                  child: new Container(
                    height: 140.0,
                    width: 210.0,
                    color: data.color,
                  ),
                ),
                Transform.translate(
                  offset: Offset(10.0, 20.0),
                  child: Card(
                    elevation: 20.0,
                    child: Container(
                      height: 160.0,
                      width: 230.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          width: 10.0,
                          color: Colors.white,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Hero(
                        tag: index,
                        child: FadeInImage(
                          image: NetworkImage(data.image),
                          fit: BoxFit.cover,
                          placeholder: AssetImage('assets/images/loading.gif'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
