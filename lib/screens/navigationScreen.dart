import 'package:flutter/material.dart';
import 'package:social_shopping/screens/profile.dart';
import 'package:social_shopping/screens/welcomScreen.dart';
import 'package:social_shopping/screens/chatting.dart';
import 'package:social_shopping/screens/publishingContent.dart';
import 'package:social_shopping/screens/contents.dart';

class NavScreen extends StatefulWidget {
  static const id = 'NavigationScreen';

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    WelcomeScreen(
      key: PageStorageKey('WelcomeScreen'),
    ),
    ContentsScreen(),
    PublishingContentScreen(),
    ChattingScreen(),
    ProfileScreen()
  ];

  final Map<String, IconData> _icons = const {
    'خانه': Icons.home,
    'مطالب': Icons.share,
    'انتشارات مطالب': Icons.add_circle_outline,
    'انتشار': Icons.message,
    'پروفایل': Icons.account_circle
  };

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.black12,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black45,
                blurRadius: 10,
              ),
            ],
          ),
          child: BottomNavigationBar(
            items: _icons
                .map((title, icon) => MapEntry(
                    title,
                    BottomNavigationBarItem(
                      icon: Icon(icon, size: 30.0),
                      title: Text(title),
                    )))
                .values
                .toList(),
            currentIndex: _currentIndex,
            selectedItemColor: Colors.red,
            selectedFontSize: 11.0,
            unselectedItemColor: Colors.black45,
            unselectedFontSize: 11.0,
            onTap: (index) => setState(() => _currentIndex = index),
          ),
        ));
  }
}
