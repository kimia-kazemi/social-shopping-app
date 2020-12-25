import 'package:social_shopping/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PublishingContentScreen extends StatefulWidget {
  @override
  _PublishingContentScreen createState() => _PublishingContentScreen();
}

class _PublishingContentScreen extends State<PublishingContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white70,
          actions: <Widget>[
            Row(
              children: <Widget>[
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(18.0),
                  ),
                  onPressed: () {},
                  color: Colors.grey,
                  textColor: Colors.white,
                  child: Text(
                    'انتشار',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ]),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: RichText(
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          text: TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    "شما هم بگویید از خرید ها‍‍ و فروش ها و کسب کار ها",
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
//              backgroundImage: Image.asset('assets/images/a.png'),
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage(user3id.avatar),
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.camera_alt,
                      size: 30,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      child: SizedBox(
                        width: 150,
                        child: Text(
                          "چسباندن عکس",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                      ),
                      iconSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.attachment,
                      size: 30,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      child: SizedBox(
                        width: 170,
                        child: Text(
                          "چسباندن محصول",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                      ),
                      iconSize: 20,
                      color: Colors.black,
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
