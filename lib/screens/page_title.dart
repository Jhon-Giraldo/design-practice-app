import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
            SizedBox(height: 10),
            Text('Classify this transaction into a \nparticular category', style: TextStyle(fontSize: 18, color: Colors.white))
          ],
        ),
      ),
    );
  }
}