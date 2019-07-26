import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:shop/func_view.dart';
import 'package:shop/hot_commodity.dart';
import 'package:shop/local_nav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  List _imagUrls = [
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559132684341&di=a63545f30bf9ec65e4a3b2f5b318dc47&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F3147ec5b9ad72271a499795ced06abbffcdf90a32854e-zGN77M_fw658',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559132684341&di=d717379a0a3aca7b909f36c22c427767&imgtype=0&src=http%3A%2F%2Fimg.zixuntop.com%2Fallimg%2F1904%2F1-1Z415121S8.jpg',
    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1559132684341&di=01d09eebed78867983ccf4d41008cf35&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn%2Fw720h480%2F20180110%2F1076-fyqnick4307161.jpg',
  ];

  List _bannars = ['images/bannar0.png', 'images/bannar.png'];

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Color(0xfff6f6f6),
      child: _listView,
    );
  }

  Widget get _bannar {
    return Swiper(
      itemCount: widget._bannars.length,
      autoplay: true,
      pagination: SwiperPagination(),
      itemBuilder: (BuildContext context, int index) {
        return Image(
          image: AssetImage(widget._bannars[index]),
          fit: BoxFit.fill,
        );
      },
    );
  }

  Widget get _listView {
    return ListView(
      children: <Widget>[
        Container(
          height: 160,
          color: Colors.amber,
          child: _bannar,
        ),
        Padding(
          padding: EdgeInsets.all(0),
          child: LocalNav(),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: HotCommodity(),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: FuncView(
            funcTitle: '手机',
            imageName0: 'images/shouji0.png',
            imageName1: 'images/shouji1.png',
            title0: '小米 Redmi K20Pro ',
            title1: '华为 nova 5i 双卡双待',
            desc0: '￥2499.00 ',
            desc1: '￥1999.00 ',
            width: 60,
            height: 82,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: FuncView(
            funcTitle: '笔记本',
            imageName0: 'images/diannao0.png',
            imageName1: 'images/diannao1.png',
            title0: 'Apple MacBook Air 13.3',
            title1: '联想 340C 15.6英寸',
            desc0: '￥5599.00',
            desc1: '￥3499.00',
            width: 100,
            height: 80,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: FuncView(
            funcTitle: '电视',
            imageName0: 'images/dianshi0.png',
            imageName1: 'images/dianshi1.png',
            title0: '海信 H55E3A 55英寸 ',
            title1: '小米全面屏 E32A 32英寸',
            desc0: '￥1899.00',
            desc1: '￥799.00',
            width: 90,
            height: 60,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: FuncView(
            funcTitle: '智能手表',
            imageName0: 'images/shoubiao0.png',
            imageName1: 'images/shoubiao1.png',
            title0: '荣耀 智能户外运动手表',
            title1: 'AMAZFIT 米动手表青春版',
            desc0: '￥899.00',
            desc1: '￥369.00',
            width: 60,
            height: 80,
          ),
        ),
      ],
    );
  }
}
