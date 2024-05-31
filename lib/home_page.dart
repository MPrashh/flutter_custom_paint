import 'package:flutter/material.dart';
import 'package:flutter_custom_paint/share_pointer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _controller.forward();
    _controller.repeat(reverse: true);

    _animation = Tween<double>(
      begin: 100,
      end: 500,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Center(
          child: CustomPaint(
              foregroundPainter: SharePointer(),
              child: Container(
                height: _animation.value,
                width: 300,
                color: Colors.grey.shade200,
              ),
            ),
          );
        },
      ),
    );
  }
}
