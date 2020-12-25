import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:social_shopping/screens/shopping.dart';

import 'package:jalali_date/jalali_date.dart';

class ChattingScreen extends StatefulWidget {
  static const id = 'ChattingScreen_screen';

  @override
  _ChattingScreen createState() => _ChattingScreen();
}

class _ChattingScreen extends State<ChattingScreen> {
  @override
  var nn = PersianDate.now().toString(showTime: false);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white70,
        title: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, ShoppingScreen.id);
              },
              icon: Icon(Icons.shopping_cart),
              highlightColor: Colors.blueGrey,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_alert),
              highlightColor: Colors.blueGrey,
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Image(
                image: AssetImage('assets/logo.png'),
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('$nn'),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      child: Text(
                        "بازار اجتماعی",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage('assets/logo.png'),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  child: SizedBox(
                    width: 310,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'برای امسال چه برنامه ای دارید؟',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.person_add,
                      size: 30,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      child: SizedBox(
                        width: 240,
                        child: Text(
                          "دوستان بیشتری دعوت کنید",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
