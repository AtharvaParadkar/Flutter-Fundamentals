import 'package:flutter/material.dart';
import 'package:flutter_basics/notifier/theme_notifier.dart';
import 'package:provider/provider.dart';

Widget cardWidget(BuildContext context, String text, VoidCallback onTap) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
    child: SizedBox(
      height: 50,
      width: MediaQuery.sizeOf(context).width,
      child: InkWell(
        onTap: onTap,
        child: Card(
          color: Provider.of<ThemeNotifier>(context, listen: false).getMode()
              ? const Color.fromARGB(255, 30, 30, 30)
              : const Color.fromARGB(255, 240, 230, 220),
          elevation: 10,
          child: Center(child: Text(text)),
        ),
      ),
    ),
  );
}
