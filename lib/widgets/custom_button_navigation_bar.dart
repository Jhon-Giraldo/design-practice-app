import 'package:flutter/material.dart';

class CustomButtonNavigationBar extends StatelessWidget {
  const CustomButtonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined),
          label: 'Calendar'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.graphic_eq_outlined, size: 27,),
          label: 'Graph'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_outlined, size: 27),
          label: 'Users'
        )
      ]
    );
  }
}
