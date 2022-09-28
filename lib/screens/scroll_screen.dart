import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.5,0.5],
        colors: [
          Color(0xff5EE8C5),
          Color(0xff30BAD6)
        ]
      )
    );


  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: const Color(0xff30BAD6),
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          //Bouncing efect
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2()
          ],
        ),  
      )
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        //Background Image
        Background(),

        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({super.key});


  @override
  Widget build(BuildContext context) {
    
    var textStyle = const TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Text('11°', style: textStyle),
          Text('Miércoles', style: textStyle),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down_outlined, color: Colors.white, size: 120)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Bienvenidos', style: TextStyle(color: Colors.white, fontSize: 30)),
          ),
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder()
          ),
        ),
      ),
    );
  }
}