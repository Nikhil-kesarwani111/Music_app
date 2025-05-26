import 'package:flutter/material.dart';

class BottomBarNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomBarNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF111111), // Adjust to match your theme
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        border: Border(
          top: BorderSide(color: Colors.grey.shade700, width: 2),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.music_note),
              label: 'TrackBox',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: 'Projects',
            ),
          ],
        ),
      ),
    );
  }
}
