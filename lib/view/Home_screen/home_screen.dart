import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Widgets/Hero_section/hero_section.dart';
import 'Widgets/Main Service/main_service.dart';
import 'Widgets/BottomBar/bottom_bar_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Column(
      children: [
        HeroSection(),
        Expanded(child: MainService()),
      ],
    ),
    Center(child: Text('News', style: TextStyle(color: Colors.white))),
    Center(child: Text('TrackBox', style: TextStyle(color: Colors.white))),
    Center(child: Text('Projects', style: TextStyle(color: Colors.white))),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Exit the app
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF18171C),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomBarNavigation(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
