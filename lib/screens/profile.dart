import 'package:social_shopping/constents/constantidentity.dart';
import 'package:social_shopping/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreen createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  @override
  int follower = 2;
  int following = 4;
  TabController _tabController;

  int selectedIndex = 0;

  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(() {
      setState(() {
        selectedIndex = _tabController.index;
        print(selectedIndex.toString());
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white70,
        title: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
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
      body: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          color: Colors.white,
          child: DraggableScrollableSheet(
            initialChildSize: 0.999,
            builder: (context, scrollableController) {
              return SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 0,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.settings),
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                              ),
                              onPressed: () {},
                              color: Colors.grey,
                              textColor: Colors.white,
                              child: Text(
                                'اشتراک گذاری',
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Align(
                                    alignment: Alignment.centerRight,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage(user3id.avatar),
                                    )),
                              ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            user3id.name,
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('$follower'),
                            SizedBox(
                              width: 90,
                            ),

                            // SizedBox(width: 90,),
                            Text('$following'),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text('دنبال کننده'),
                            SizedBox(
                              width: 45,
                            ),
                            Text('دنبال شونده'),
                          ],
                        ),
                      ),
                      TabBar(
                        controller: _tabController,
                        indicatorColor: Colors.black,
                        tabs: <Widget>[
                          Tab(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'تجربه های خرید  ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Icon(
                                  Icons.star_border,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          Tab(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'مطالب   ',
                                style: TextStyle(color: Colors.black),
                              ),
                              Icon(
                                Icons.speaker_notes,
                                size: 20,
                                color: Colors.black,
                              ),
                            ],
                          )),
                        ],
                      ),
                      Container(
                        height: 220,
                        width: 380,
                        child: TabBarView(
                          controller: _tabController,
                          children: <Widget>[
                            myc(context),
                            myc2(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          )),
    );
  }
}

myc(context) {
  return Container(
      padding: EdgeInsets.only(top: 50), child: listviewofsellers(context));
}

myc2() {
  return Container(
    padding: EdgeInsets.only(top: 50),
    child: Column(
      children: <Widget>[
        Text(
          '😐',
          style: TextStyle(fontSize: 100),
        ),
        Text(
          'هنوز تجربه ی خریدی ثبت نشده',
          style: TextStyle(fontSize: 20),
        )
      ],
    ),
  );
}
