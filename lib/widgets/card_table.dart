import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
              color: Colors.blue, icon: Icons.border_all, text: 'General'),
          _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental_outlined,
              text: 'Transport')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.purple, icon: Icons.movie, text: 'Entertainment'),
          _SingleCard(
              color: Colors.purpleAccent,
              icon: Icons.food_bank_outlined,
              text: 'Grocery')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.deepPurple,
              icon: Icons.cloud_outlined,
              text: 'General'),
          _SingleCard(
              color: Colors.pinkAccent,
              icon: Icons.car_rental_outlined,
              text: 'Transport')
        ]),
        TableRow(children: [
          _SingleCard(
              color: Colors.indigo, icon: Icons.settings, text: 'Settings'),
          _SingleCard(
              color: Colors.cyanAccent.shade700,
              icon: Icons.logout_outlined,
              text: 'Log Out')
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;

  const _SingleCard(
      {super.key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {

    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(this.icon, size: 35, color: Colors.white),
            radius: 30,
          ),
          SizedBox(height: 35),
          Text(this.text,
            style: TextStyle(color: this.color, fontSize: 17))
        ],
      )
    );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({
    super.key, 
    required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
