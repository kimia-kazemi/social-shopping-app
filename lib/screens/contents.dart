import 'dart:ui';
import 'package:social_shopping/data/data.dart';
import 'package:social_shopping/constents/constantAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ContentsScreen extends StatefulWidget {
  static const id = 'mataleb_screen';

  @override
  _ContentsScreen createState() => _ContentsScreen();
}

class _ContentsScreen extends State<ContentsScreen> {
  Widget _stackBar() {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.centerRight,
          child: CircleAvatar(
            backgroundImage: AssetImage(user1id.avatar),
            backgroundColor: Colors.grey,
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: InkWell(
            child: SizedBox(
              width: 160,
              child: Text(
                "شما هم بنویسید",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: InkWell(
            child: SizedBox(
              height: 40,
              width: 120,
              child: IconButton(
                icon: Icon(Icons.attach_file),
                onPressed: () {},
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _updateButton() {
    return Container(
      height: 50.0,
      width: 300,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Center(
            child: Text(
              "بروز رسانی صفحه",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _idenityCard() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Colors.white,
          border: Border.all(color: Colors.grey)),
      height: 160,
      width: 158,
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/logo.png'),
            height: 80,
            width: 60,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            user3id.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'qom',
            style: TextStyle(fontSize: 13),
          ),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18.0),
            ),
            onPressed: () {},
            color: Colors.teal,
            textColor: Colors.white,
            child: Text(
              'دنبال کنید',
              style: TextStyle(fontSize: 10),
            ),
          )
        ],
      ),
    );
  }

  @override
  Icon cIcon = Icon(Icons.search);

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: kAppBar(context),
        body: SafeArea(
          bottom: true,
          top: true,
          right: true,
          left: true,
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 10, right: 10, top: 10),
            child: DraggableScrollableSheet(
              initialChildSize: 0.999,
              builder: (context, scrollableController) {
                return SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      _stackBar(),
                      SizedBox(height: 10),
                      _updateButton(),
                      SizedBox(height: 10),
                      Container(
                        height: 220,
                        child: ListView(
                          key: PageStorageKey('contentsPage'),
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            _idenityCard(),
                            SizedBox(
                              width: 20,
                            ),
                            _idenityCard(),
                            SizedBox(
                              width: 20,
                            ),
                            _idenityCard(),
                            SizedBox(
                              width: 20,
                            ),
                            _idenityCard(),
                            SizedBox(
                              width: 20,
                            ),
                            _idenityCard(),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ));
  }
}
