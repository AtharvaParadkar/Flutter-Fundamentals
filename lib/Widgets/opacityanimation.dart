import 'package:flutter/material.dart';

class OpacityAnimation extends StatefulWidget {
  const OpacityAnimation({super.key});

  @override
  State<OpacityAnimation> createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _positionAnimation;
  late Animation<double> _sizeAnimation, _rotationAnimation, _opacityAnimation;

  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _positionAnimation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0, 1),
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _sizeAnimation = Tween<double>(
      begin: 50,
      end: 250,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 2 * 3.14).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _opacityAnimation = Tween<double>(
      begin: 1.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity Animation'),
        backgroundColor: Color.fromARGB(255, 0, 0, 255),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (ctx, child) {
            return Opacity(
              opacity: _opacityAnimation.value,
              child: Transform.translate(
                offset: _positionAnimation.value,
                child: Transform.rotate(
                  angle: _rotationAnimation.value,
                  child: Container(
                    width: _sizeAnimation.value,
                    height: _sizeAnimation.value,
                    color: Color.fromARGB(255, 0, 0, 255),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.status == AnimationStatus.completed) {
            _controller.reverse();
          } else {
            _controller.forward();
          }
        },
        child: Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
