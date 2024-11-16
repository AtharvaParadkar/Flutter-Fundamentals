import 'package:flutter/material.dart';
import 'package:flutter_basics/cardwidget.dart';
import 'package:flutter_basics/navigation.dart';
import 'package:flutter_basics/uis.dart';
import 'package:flutter_basics/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(
      {super.key, required this.onThemeChanged, required this.isDarkMode});

  final Function(bool) onThemeChanged;
  final bool isDarkMode;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool themeSwitcher;
  @override
  void initState() {
    super.initState();
    themeSwitcher = widget.isDarkMode;
  }

  final themeIcon = WidgetStateProperty.resolveWith<Icon?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(
          Icons.nightlight_round_sharp,
          color: Colors.white,
        );
      }
      return const Icon(
        Icons.light_mode_rounded,
        color: Colors.black,
      );
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text('Flutter Basics'),
        backgroundColor: widget.isDarkMode
            ? const Color.fromARGB(255, 30, 30, 30)
            : const Color.fromARGB(255, 240, 230, 220),
        actions: [
          Switch(
            value: widget.isDarkMode,
            activeColor: Colors.black12,
            inactiveThumbColor: Colors.white,
            thumbIcon: themeIcon,
            onChanged: (bool value) {
              setState(() {
                themeSwitcher = value;
                widget.onThemeChanged(value);
              });
            },
          ),
        ],
      ),
      body: Container(
        color: widget.isDarkMode
            ? const Color.fromARGB(255, 30, 30, 30)
            : const Color.fromARGB(255, 240, 230, 220),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cardWidget(context, 'UI\'s', ()=>MyNavigation(context,MyUIs())),
            cardWidget(context, 'Widget\'s', ()=>MyNavigation(context,MyWidgets())),
          ],
        ),
      ),
    );
  }

}
