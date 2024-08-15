import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  double _progress = 0.0;
  @override
  void initState() {
    super.initState();
    _progressSimulator();
  }

  void _progressSimulator() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _progress += 0.25;
        if (_progress < 1.0) {
          _progressSimulator();
        }
      });
    });
  }

  _pcolor() {
    if (_progress >= 0.25 && _progress < 0.50) {
      return const Color.fromARGB(255, 255, 100, 0);
    } else if (_progress >= 0.50 && _progress < 0.75) {
      return const Color.fromARGB(255, 241, 52, 171);
    } else if (_progress >= 0.75 && _progress < 1) {
      return const Color.fromARGB(255, 255, 230, 0);
    } else if (_progress == 1) {
      return const Color.fromARGB(255, 255, 0, 0);
    }
    // Container(
    //   decoration: const BoxDecoration(
    //     gradient: LinearGradient(
    //       colors: [
    //         Color.fromARGB(255, 255, 0, 0),
    //         Color.fromARGB(255, 0, 255, 0),
    //         Color.fromARGB(255, 0, 0, 255),
    //       ],
    //       begin: Alignment.centerLeft,
    //       end: Alignment.centerRight,
    //     ),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress bar'),
        backgroundColor: Color.fromARGB(255, 0, 0, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 255, 0, 0),
                    Color.fromARGB(255, 0, 0, 255),
                    Color.fromARGB(255, 0, 255, 0),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ).createShader(bounds);
              },
              child: LinearProgressIndicator(
                minHeight: 7,
                borderRadius: BorderRadius.circular(20),
                value: _progress,
                backgroundColor: Colors.transparent,
                valueColor: const AlwaysStoppedAnimation(Colors.white),
              ),
            ),
            const SizedBox(height: 30),
            CircularProgressIndicator(
              value: _progress,
              // color: _pcolor(),
              backgroundColor: Colors.transparent,
              strokeWidth: 7,
              valueColor: AlwaysStoppedAnimation(_pcolor()),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _progress = 0.0;
                  _progressSimulator();
                });
              },
              child: const Text('Restart'),
            ),
          ],
        ),
      ),
    );
  }
}
