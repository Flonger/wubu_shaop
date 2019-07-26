import 'package:flutter/material.dart';

class LocalNav extends StatefulWidget {
  @override
  _LocalNavState createState() => _LocalNavState();
}

class _LocalNavState extends State<LocalNav> {
  List localNavList = ['手机', '笔记本', '电视', '智能手表'];
  List iconNames = [
    'images/shouji.png',
    'images/diannao.png',
    'images/dianshi.png',
    'images/shoubiao.png'
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 104,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: _items(context),
      ),
    );
  }

  _items(BuildContext context) {
    List<Widget> items = [];

    for (int i = 0; i < localNavList.length; i++) {
      items.add(_item(context, localNavList[i], iconNames[i]));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: items,
    );
  }

  Widget _item(BuildContext context, String title, String iconName) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            width: 45,
            height: 45,
            child: Image(
              image: AssetImage(iconName),
            ),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 14,
                color: Color(0xff585858),
                decoration: TextDecoration.none),
          ),
        ],
      ),
    );
  }
}
