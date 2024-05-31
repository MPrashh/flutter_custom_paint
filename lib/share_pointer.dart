import 'dart:ui';

import 'package:flutter/material.dart';

class SharePointer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green.shade200;
    paint.strokeWidth = 5;
    paint.strokeCap = StrokeCap.round;

    /* 1. draw Horizontal Line */

    Offset startingPoint = Offset(0, size.height / 2);
    Offset endingPoint = Offset(size.width, size.height / 2);

    // canvas.drawLine(startingPoint, endingPoint, paint);

    /* Another Method using Path() */

    // var path = Path();
    // path.moveTo(0, size.height / 2);
    // path.lineTo(size.width, size.height / 2);
    // canvas.drawPath(path, paint);

    /* 2. draw Circle */

    // Offset center = Offset(size.width / 2, size.height / 2);
    // canvas.drawCircle(center, 100, paint);

    /* 3. draw Rectangle */

    canvas.drawRect(
      const Rect.fromLTWH(20, 40, 100, 100),
      paint,
    );

    canvas.drawPoints(
      PointMode.polygon,
      [startingPoint * 2, endingPoint * 2],
      paint,
    );

    canvas.drawColor(
      Colors.red,
      BlendMode.color,
    );

    canvas.drawOval(
      Rect.fromLTWH(size.width - 120, 40, 100, 100),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
