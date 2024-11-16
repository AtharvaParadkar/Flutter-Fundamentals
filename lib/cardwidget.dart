import 'package:flutter/material.dart';

Widget cardWidget(BuildContext context, String text, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: SizedBox(
        height: 50,
        width: MediaQuery.sizeOf(context).width,
        child: InkWell(
          onTap: onTap,
          child: Card(
            elevation: 10,
            child: Center(child: Text(text)),
          ),
        ),
      ),
    );
  }