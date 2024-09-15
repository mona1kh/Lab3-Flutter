import 'package:flutter/material.dart';
import 'package:last_day/main_page.dart';
import 'package:last_day/messages.dart';
import 'package:last_day/settings.dart';
class NavBar extends StatefulWidget {
  const NavBar({super.key});
  @override
  State<NavBar> createState() => _NavBarState();
}
class _NavBarState extends State<NavBar> {
  List Pages=[
    MainPage(),
    Messages(),
    Settings()
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[selectedIndex],
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:selectedIndex,
        onTap: (val){
          setState((){
            selectedIndex =val;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),

        ],
      ),
    );
  }
}
