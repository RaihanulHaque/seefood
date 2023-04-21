import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24)),
      ),
      // color: Colors.black,
      // padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      // decoration: const BoxDecoration(
      //   borderRadius: BorderRadius.all(Radius.circular(10)),
      //   color: Color.fromARGB(255, 87, 189, 91),
      // ),
      child: GNav(
        // tabMargin: EdgeInsets.symmetric(horizontal: 20),
        // selectedIndex: _selectedIndex,
        // onTabChange: (index) {
        //   print(index);
        // },

        backgroundColor: Colors.white,
        // color: Colors.white,
        // activeColor: Colors.white,
        // tabBackgroundColor: const Color.fromRGBO(144, 164, 174, 1),
        gap: 10,
        iconSize: 30,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.cloud_upload_outlined,
            text: 'Upload',
          ),
          GButton(
            icon: Icons.info_outline_rounded,
            text: 'Info',
          )
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          // print(index);
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.cloud_upload_outlined,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];

  List<String> listOfStrings = [
    'Home',
    'Upload',
    'Settings',
    'Account',
  ];
}
