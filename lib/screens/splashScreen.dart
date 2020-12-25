import 'package:connectivity/connectivity.dart';
import 'package:social_shopping/assets.dart';
import 'package:social_shopping/screens/navigationScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const id = 'splash_screen';

  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white38, Color(0xFF4F34BD)])),
          child: Center(
            child: Column(
              children: [
                Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(bottom: 70),
                    child: Image(
                      image: AssetImage(Assets.logo),
                    )),
                Text(
                  'خوش امدید',
                  style: TextStyle(fontSize: 20),
                ),
                FlatButton(
                    onPressed: _checkIfInternetIsConnected,
                    child: Text(
                      'ورود',
                      style: TextStyle(fontSize: 16, color: Color(0xFF5C52E0)),
                    ))
              ],
            ),
            // child: RaisedButton(
            //   child: Text('دوباره امتحان کنید'),
            //   onPressed: _checkIfInternetIsConnected,
            // ),
          ),
        ),
      ),
    );
  }

  _checkIfInternetIsConnected() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      _alertDialog('no internet',
          'لطفا از روشن بودن دیتا یا اتصال به شبکه ی وای فای اطمینان حاصل فرمایید');
    } else if (result == ConnectivityResult.wifi) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NavScreen()));
    } else if (result == ConnectivityResult.mobile) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NavScreen()));
    }
  }

  _alertDialog(title, text) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(text),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('باشه'))
            ],
          );
        });
  }
}
