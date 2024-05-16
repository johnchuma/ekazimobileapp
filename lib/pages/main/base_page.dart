// ignore_for_file: camel_case_types
import 'package:ekazi/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class basePage extends StatefulWidget {
  const basePage({super.key});

  @override
  State<basePage> createState() => _basePageState();
}

class _basePageState extends State<basePage> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: backgroundColor,
        child: BottomNavigationBar(
          backgroundColor: primaryColor.withOpacity(0.02),
          landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
          selectedLabelStyle: const TextStyle(color: Colors.black),
          unselectedLabelStyle: const TextStyle(color: Colors.grey),
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(OctIcons.home),
              activeIcon: Icon(Icons.home_filled),
              tooltip: "Home",
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(OctIcons.search),
              activeIcon: Icon(
                Icons.search,
                size: 26,
              ),
              // Example different icon and color
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesome.message,
                size: 20,
              ), // Example different icon and color
              activeIcon: Icon(
                Icons.message,
                size: 26,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                OctIcons.bell,
              ), // Example different icon and color
              activeIcon: Icon(
                OctIcons.bell_fill,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                OctIcons.person,
              ), // Example different icon and color
              activeIcon: Icon(
                OctIcons.person_fill,
              ),
              label: '',
            ),
          ],
          selectedItemColor:
              Colors.black, // Set the color for the selected item
          unselectedItemColor:
              Colors.grey, // Set the color for unselected items
          currentIndex: selectedTab, // You can set the current index here
          elevation: 0,
          onTap: (int index) {
            setState(() {
              selectedTab = index;
            });
          },
        ),
      ),
    );
  }
}
