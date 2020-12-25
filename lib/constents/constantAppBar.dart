import 'package:flutter/material.dart';

kAppBar(context) {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white70,
    title: Text(
      'دسته بندی',
      style: TextStyle(color: Colors.black, fontSize: 16),
    ),
    actions: <Widget>[
      Align(
        alignment: Alignment.centerLeft,
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add_alert),
        ),
      ),
    ],
    bottom: PreferredSize(
      preferredSize: Size(50, 50),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: TextField(
                style: TextStyle(color: Colors.black, fontSize: 14),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white54,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: 'جستوجو در میان محصولات',
                    contentPadding: EdgeInsets.all(16),
                    hintStyle: TextStyle(color: Colors.black),
                    icon: IconButton(
                      icon: Icon(Icons.search),
                      iconSize: 20,
                      color: Colors.black,
                      onPressed: () => print('search button is clicked'),
                    )),
                autofocus: false,
                textAlign: TextAlign.end,
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: FlatButton(
              onPressed: () {},
              child: Image(
                image: AssetImage('assets/logo.png'),
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
