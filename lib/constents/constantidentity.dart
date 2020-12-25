import 'package:flutter/material.dart';
import 'package:social_shopping/data/data.dart';
import 'package:social_shopping/screens/shopping.dart';

identityOfSeller1() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.grey[300]),
    height: 170,
    width: 170,
    child: Column(
      children: <Widget>[
        Image(
          image: AssetImage('assets/logo.png'),
          height: 80,
          width: 60,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: CircleAvatar(
                backgroundImage: AssetImage(user1id.avatar),
              )),
              Expanded(
                  flex: 2,
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            user1id.name,
                            style: TextStyle(fontSize: 18),
                          )))),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.more_vert),
                  iconSize: 30,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

identityOfSeller2() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.grey[300]),
    height: 170,
    width: 170,
    child: Column(
      children: <Widget>[
        Image(
          image: AssetImage('assets/logo.png'),
          height: 80,
          width: 60,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: CircleAvatar(
                backgroundImage: AssetImage(user2id.avatar),
              )),
              Expanded(
                  flex: 2,
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            user2id.name,
                            style: TextStyle(fontSize: 18),
                          )))),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.more_vert),
                  iconSize: 30,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

identityOfSeller3() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.grey[300]),
    height: 170,
    width: 170,
    child: Column(
      children: <Widget>[
        Image(
          image: AssetImage('assets/logo.png'),
          height: 80,
          width: 60,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: CircleAvatar(
                backgroundImage: AssetImage(user3id.avatar),
              )),
              Expanded(
                  flex: 2,
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            user3id.name,
                            style: TextStyle(fontSize: 18),
                          )))),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.more_vert),
                  iconSize: 30,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

identityOfSeller4() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.grey[300]),
    height: 170,
    width: 170,
    child: Column(
      children: <Widget>[
        Image(
          image: AssetImage('assets/logo.png'),
          height: 80,
          width: 60,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
          child: Row(
            children: <Widget>[
              Expanded(
                  child: CircleAvatar(
                backgroundImage: AssetImage(user4id.avatar),
              )),
              Expanded(
                  flex: 2,
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            user4id.name,
                            style: TextStyle(fontSize: 18),
                          )))),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.more_vert),
                  iconSize: 30,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget horizontalList1 = new Container(
    margin: EdgeInsets.symmetric(vertical: 20.0),
    height: 200.0,
    child: new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        FlatButton(onPressed: null, child: identityOfSeller1()),
        FlatButton(onPressed: null, child: identityOfSeller2()),
        FlatButton(onPressed: null, child: identityOfSeller3()),
        FlatButton(onPressed: null, child: identityOfSeller4()),
      ],
    ));

BuildContext context;

listviewofsellers(context) {
  return Container(
      child: new ListView(
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      FlatButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ShoppingScreen()));
          },
          child: identityOfSeller1()),
      FlatButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ShoppingScreen()));
          },
          child: identityOfSeller2()),
      FlatButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ShoppingScreen()));
          },
          child: identityOfSeller3()),
      FlatButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ShoppingScreen()));
          },
          child: identityOfSeller4()),
    ],
  ));
}
