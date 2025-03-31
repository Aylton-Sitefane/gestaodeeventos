import 'package:flutter/material.dart';
import 'package:isutclog/app/view/home/home_screen.dart';
import 'package:isutclog/app/view/profile/profile_page.dart';
import 'package:isutclog/app/view/settings/setting_page.dart';
import 'package:isutclog/components/constants.dart';

class MainHome extends StatefulWidget {
  const MainHome({
    super.key,
  });

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _currentIndex = 0;

  final List<Widget> pageOptions = const [
    HomeScreen(),
    ProfilePage(),
    SettingPage(),
  ];

  void _changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageOptions.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (selectedIndex) => _changePage(selectedIndex),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blueAccent,
              size: KdefaultPadding * 2,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
              color: Colors.blueAccent,
              size: KdefaultPadding * 2,
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.blueAccent,
              size: KdefaultPadding * 2,
            ),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
