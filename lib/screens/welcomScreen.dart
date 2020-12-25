import 'dart:ui';
import 'package:social_shopping/constents/constantidentity.dart';
import 'package:social_shopping/constents/constantAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

import 'package:carousel_pro/carousel_pro.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = 'welcom_screen';

  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreen createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State<WelcomeScreen> {
  Drawer _drawer() {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text(
            "دسته بندی",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        _ConstantListTile(
          title: ' بازارچه',
          icon: Icon(Icons.arrow_forward_ios),
        ),
        _ConstantListTile(
          title: 'عطاری',
          icon: Icon(Icons.arrow_forward_ios),
        ),
        _ConstantListTile(
          title: 'فروشگاه',
          icon: Icon(Icons.arrow_forward_ios),
        ),
        _ConstantListTile(
          title: 'نبض بازار',
          icon: Icon(Icons.arrow_forward_ios),
        ),
        new Divider(),
        ListTile(
          title: Text('پشتیبانی'),
        ),
        ListTile(
          title: Text('32700223'),
        )
      ],
    ));
  }

  Widget _directionBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: FlatButton(
              onPressed: () {},
              child: Text(
                'برای شما',
                style: TextStyle(fontSize: 14),
              )),
        ),
        Expanded(
          child: FlatButton(
              onPressed: () {},
              child: Text(
                'بهار',
                style: TextStyle(fontSize: 14),
              )),
        ),
        Expanded(
          child: FlatButton(
              onPressed: () {},
              child: Text(
                'بازارگردی',
                style: TextStyle(fontSize: 14),
              )),
        ),
        Expanded(
          child: FlatButton(
              onPressed: () {},
              child: Text(
                ' کف بازار',
                style: TextStyle(fontSize: 14),
              )),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: kAppBar(context),
        drawer: _drawer(),
        body: SafeArea(
          bottom: true,
          top: true,
          right: true,
          left: true,
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            color: Colors.white,
            child: DraggableScrollableSheet(
              key: PageStorageKey('WelcomeScreen'),
              initialChildSize: 0.999,
              builder: (context, scrollableController) {
                return SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: _directionBar(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                          key: PageStorageKey<String>('carouselImages'),
                          height: 200.0,
                          width: double.infinity,
                          child: Carousel(
                            boxFit: BoxFit.cover,
                            autoplay: true,
                            animationCurve: Curves.fastOutSlowIn,
                            animationDuration: Duration(milliseconds: 1000),
                            dotSize: 4.0,
                            dotIncreasedColor: Colors.greenAccent,
                            dotBgColor: Colors.transparent,
                            dotPosition: DotPosition.topRight,
                            dotVerticalPadding: 10.0,
                            showIndicator: true,
                            images: [
                              NetworkImage(
                                  'https://donyayezaferan.ir/wp-content/uploads/2020/10/3585693.jpg'),
                              NetworkImage(
                                  'https://cdn.yjc.ir/files/fa/news/1398/7/8/10642602_820.jpg'),
                              NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSHwLdNPTD59a2SRq1BPSBAgIZf84LoLlHfYl3JrhdZPt0g9mqU&usqp=CAU'),
                              NetworkImage(
                                  'https://jalebz.ir/wp-content/uploads/%D8%B7%D8%B1%D8%B2-%D8%AA%D9%87%DB%8C%D9%87-%D9%86%D8%A7%D9%86-%D8%B3%DB%8C%D9%85%DB%8C%D8%AA%D8%9B-%D9%86%D8%A7%D9%86-%D8%B3%D9%86%D8%AA%DB%8C-%D8%AA%D8%B1%DA%A9%DB%8C%D9%87-500x380.jpg?v=1606553427'),
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 230,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/background.jpg'),
                                  fit: BoxFit.cover)),
                          child: listviewofsellers(context)),
                      SizedBox(
                        height: 20,
                      ),
                      Container(height: 170, child: listviewofsellers(context))
                    ],
                  ),
                );
              },
            ),
          ),
        ));
  }
}

class _ConstantListTile extends StatelessWidget {
  @override
  final String title;

  final Icon icon;

  const _ConstantListTile({Key key, this.title, this.icon}) : super(key: key);

  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(title: Text('$title'), trailing: icon),
    );
  }
}
