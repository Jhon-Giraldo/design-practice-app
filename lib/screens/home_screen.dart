import 'package:design_practice_1/screens/page_title.dart';
import 'package:design_practice_1/widgets/brackground.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
        children: const [
        //Background
        Background(),

        _HomeBody()
        ],
      )
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          //Titles
          PageTitle()

        ],
      ),

    );
  }
}