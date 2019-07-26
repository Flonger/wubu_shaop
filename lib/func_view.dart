import 'package:flutter/material.dart';

class FuncView extends StatefulWidget {
  final String funcTitle;

  FuncView({this.funcTitle});

  @override
  _FuncViewState createState() => _FuncViewState();
}

class _FuncViewState extends State<FuncView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 235,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Row(
              children: <Widget>[
                Container(
                  width: 2,
                  height: 15,
                  color: Colors.yellow,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    widget.funcTitle,
                    style: TextStyle(
                        color: Color(0xff585858),
                        fontSize: 16,
                        decoration: TextDecoration.none),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 170,
                  height: 180,
                  color: Color(0xffeeeeee),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        height: 80,
                        width: 80,
                        child: Image(
                          image: AssetImage('images/shop.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          '小米 Redmi K20Pro ',
                          style: TextStyle(
                              color: Color(0xff101010),
                              fontSize: 13,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          '￥2499.00 ',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 170,
                  height: 180,
                  color: Color(0xffeeeeee),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        height: 80,
                        width: 80,
                        child: Image(
                          image: AssetImage('images/shop.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          '小米 Redmi K20Pro ',
                          style: TextStyle(
                              color: Color(0xff101010),
                              fontSize: 13,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          '￥2499.00 ',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
