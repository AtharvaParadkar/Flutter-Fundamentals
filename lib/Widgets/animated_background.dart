enum BackgroundType { bubbles, waves, particles }

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBackground(
        type: BackgroundType.particles,

        child: const Center(
          child: Text(
            "Animated Background",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
    );
  }
}

class ParticlesPainter extends CustomPainter {
  final double progress;
  final Random random = Random();

  ParticlesPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.black.withValues(alpha: 0.5);

    for (int i = 0; i < 50; i++) {
      final x = random.nextDouble() * size.width;
      final y = random.nextDouble() * size.height;

      canvas.drawCircle(Offset(x, y + progress * 50), 2, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class WavePainter extends CustomPainter {
  final double progress;

  WavePainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blueAccent.withValues(alpha: 0.4)
      ..style = PaintingStyle.fill;

    final path = Path();

    for (double x = 0; x <= size.width; x++) {
      final y =
          sin((x / size.width * 2 * pi) + progress * 2 * pi) * 20 +
          size.height / 2;

      if (x == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class BubblePainter extends CustomPainter {
  final double progress;
  final Random random = Random();

  BubblePainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.blue.withValues(alpha: 0.3);

    for (int i = 0; i < 20; i++) {
      final x = random.nextDouble() * size.width;
      final y = (progress * size.height + i * 50) % size.height;

      canvas.drawCircle(Offset(x, y), 10 + random.nextDouble() * 20, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class AnimatedBackground extends StatefulWidget {
  const AnimatedBackground({
    super.key,
    required this.type,
    required this.child,
  });

  final BackgroundType type;
  final Widget child;

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedBuilder(
          animation: controller,
          builder: (_, _) {
            switch (widget.type) {
              case BackgroundType.bubbles:
                return CustomPaint(
                  painter: BubblePainter(controller.value),
                  size: Size.infinite,
                );

              case BackgroundType.waves:
                return CustomPaint(
                  painter: WavePainter(controller.value),
                  size: Size.infinite,
                );

              case BackgroundType.particles:
                return CustomPaint(
                  painter: ParticlesPainter(controller.value),
                  size: Size.infinite,
                );
            }
          },
        ),
        widget.child,
      ],
    );
  }
}
