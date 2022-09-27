import 'dart:ffi';

import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            //Background Image
            Background(),

            MainContent()
          ],
        )
    );
  }
}

class MainContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    var textStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Text('11°', style: textStyle),
          Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white, size: 120)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}
