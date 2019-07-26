import 'package:flutter/material.dart';

class HotCommodity extends StatefulWidget {
  @override
  _HotCommodity createState() => _HotCommodity();
}

class _HotCommodity extends State<HotCommodity> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 220,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: _titleView(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: _listView(),
          )
        ],
      ),
    );
  }

  _titleView() {
    return Row(
      children: <Widget>[
        Container(
          width: 12,
          height: 16,
          child: Image(
            image: AssetImage('images/hot.png'),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            '热销爆款',
            style: TextStyle(
                fontSize: 16,
                color: Color(0xff585858),
                decoration: TextDecoration.none),
          ),
        ),
      ],
    );
  }

  _listView() {
    return Container(
      height: 155,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 125,
                      width: 125,
                      child: Image(image: AssetImage('images/shop.png')),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                        ),
                        height: 30,
                        child: Text(
                          '红米K20pro手机',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    '￥2499.00',
                    style: TextStyle(
                        fontSize: 14, decoration: TextDecoration.none),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 125,
                      width: 125,
                      child: Image(image: AssetImage('images/shop.png')),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                        ),
                        height: 30,
                        child: Text(
                          '红米K20pro手机',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    '￥2499.00',
                    style: TextStyle(
                        fontSize: 14, decoration: TextDecoration.none),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 125,
                      width: 125,
                      child: Image(image: AssetImage('images/shop.png')),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black12,
                        ),
                        height: 30,
                        child: Text(
                          '红米K20pro手机',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    '￥2499.00',
                    style: TextStyle(
                        fontSize: 14, decoration: TextDecoration.none),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
