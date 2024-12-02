import 'package:flutter/material.dart';

class ExpandAnimation extends StatefulWidget {
  const ExpandAnimation({super.key});

  @override
  State<ExpandAnimation> createState() => _ExpandAnimationState();
}

class _ExpandAnimationState extends State<ExpandAnimation>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            const Divider(),
            AnimatedContainer(
              duration: const Duration(seconds: 2),
              height: _isExpanded ? 200 : 70,
              width: _isExpanded ? 200 : 70,
              color: _isExpanded
                  ? const Color.fromARGB(255, 255, 0, 0)
                  : const Color.fromARGB(255, 0, 0, 255),
              alignment: _isExpanded ? Alignment.center : Alignment.topCenter,
              curve: Curves.easeInOutBack,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: const FlutterLogo(size: 80),
              ),
            ),
            const Divider(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isExpanded = !_isExpanded;
          });
        },
        child: const Icon(Icons.play_arrow_outlined),
      ),
    );
  }
}
