import 'package:flutter/material.dart';
import 'package:flutter_basics/UI/gymcheckoutui.dart';
import 'package:flutter_basics/UI/instaui.dart';
import 'package:flutter_basics/UI/simpleui.dart';
import 'package:flutter_basics/cardwidget.dart';
import 'package:flutter_basics/navigation.dart';

class MyUIs extends StatelessWidget {
  const MyUIs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text('UI\'s'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          cardWidget(context, 'Profile UI', ()=>MyNavigation(context,SimpleUI())),
          cardWidget(context, 'Insta UI', () =>MyNavigation(context,InstaUI())),
          cardWidget(context, 'Gym Checkout UI', ()=>MyNavigation(context,GymUI())),
        ],
      ),
    );
  }
}
