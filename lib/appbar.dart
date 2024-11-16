import 'package:flutter/material.dart';

class myAppbar extends StatefulWidget {
  const myAppbar(
      {super.key, required this.onThemeChanged, required this.isDarkMode});

  final Function(bool) onThemeChanged;
  final bool isDarkMode;

  @override
  State<myAppbar> createState() => _myAppbarState();
}

class _myAppbarState extends State<myAppbar> {
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
    return AppBar(
      scrolledUnderElevation: 0,
      title: Text('Flutter Basics'),
      backgroundColor: themeSwitcher
          ? const Color.fromARGB(255, 30, 30, 30)
          : const Color.fromARGB(255, 240, 230, 220),
      actions: [
        Switch(
          value: themeSwitcher,
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
    );
  }
}
