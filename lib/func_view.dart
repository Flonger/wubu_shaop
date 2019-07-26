import 'package:flutter/material.dart';

class FuncView extends StatefulWidget {
  final String funcTitle;
  final String imageName0;
  final String imageName1;
  final String title0;
  final String title1;
  final String desc0;
  final String desc1;
  final double width;
  final double height;

  FuncView(
      {this.funcTitle,
      this.width,
      this.height,
      this.imageName0,
      this.imageName1,
      this.title0,
      this.title1,
      this.desc0,
      this.desc1});

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
                        height: widget.width,
                        width: widget.height,
                        child: Image(
                          image: AssetImage(widget.imageName0),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          widget.title0,
                          style: TextStyle(
                              color: Color(0xff101010),
                              fontSize: 13,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          widget.desc0,
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
                        height: widget.width,
                        width: widget.height,
                        child: Image(
                          image: AssetImage(widget.imageName1),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          widget.title1,
                          style: TextStyle(
                              color: Color(0xff101010),
                              fontSize: 13,
                              decoration: TextDecoration.none),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          widget.desc1,
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
