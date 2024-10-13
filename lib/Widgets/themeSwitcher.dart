import 'package:flutter/material.dart';

class Themeswitcher extends StatefulWidget {
  const Themeswitcher(
      {super.key, required this.onThemeChanged, required this.isDarkMode});

  final Function(bool) onThemeChanged;
  final bool isDarkMode;

  @override
  State<Themeswitcher> createState() => _ThemeswitcherState();
}

class _ThemeswitcherState extends State<Themeswitcher> {
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
        title: Text('Theme Switcher'),
        backgroundColor: widget.isDarkMode
            ? const Color.fromARGB(255, 0, 0, 255)
            : Colors.blue,
      ),
      body: Container(
        color: widget.isDarkMode
            ? const Color.fromARGB(255, 0, 0, 70)
            : const Color.fromARGB(255, 220, 220, 255),
        child: Center(
          child: Switch(
              value: themeSwitcher,
              activeColor: Colors.black12,
              inactiveThumbColor: Colors.white,
              thumbIcon: themeIcon,
              onChanged: (bool value) {
                setState(() {
                  themeSwitcher = value;
                  widget.onThemeChanged(value);
                });
              }),
        ),
      ),
    );
  }
}
