import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //Image
          const Image(image: AssetImage('assets/Landscape.jpg')),

          //Title
          const Title(),

          //Button Section
          const ButtonSection(),

          //Description
          Container (
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),            
            child: const Text('Eiusmod sunt minim incididunt consectetur anim nulla occaecat proident cillum consequat eiusmod. Est excepteur aliquip id nulla fugiat sunt mollit mollit excepteur ad ipsum. Culpa veniam excepteur adipisicing enim duis eiusmod commodo consequat do. Minim enim deserunt labore in ipsum. Reprehenderit veniam labore excepteur pariatur amet duis voluptate commodo nisi ea proident. Et commodo est reprehenderit ad irure quis velit non irure duis eiusmod veniam fugiat. Incididunt veniam deserunt amet do ea incididunt.',
             style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),)
          )

        ],
      )
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeshinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text('Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.black45, fontSize: 16)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41', style: TextStyle(fontSize: 16),),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [

          CustomButton(icon: Icons.call, text: 'Call'),
          CustomButton(icon: Icons.gps_fixed_outlined, text: 'Route'),
          CustomButton(icon: Icons.share, text: 'Share'),

        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon( icon, color: Colors.blue, size: 37,),
        Text( text, style: const TextStyle(color: Colors.blue))
      ],
    );
  }
}
