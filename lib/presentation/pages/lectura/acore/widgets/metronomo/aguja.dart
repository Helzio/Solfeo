
import 'package:flutter/material.dart';

class AgujaPainter extends CustomPainter {
  final Paint AgujaPaint;
  final Paint AgujaPointsPaint;

  AgujaPainter()
      : AgujaPaint = Paint(),
        AgujaPointsPaint = Paint() {
    AgujaPaint.color = Colors.white;
    AgujaPaint.style = PaintingStyle.stroke;
    AgujaPaint.strokeWidth = 2.0;

    AgujaPointsPaint.color = Colors.white;
    AgujaPointsPaint.style = PaintingStyle.fill;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width / 2;
    canvas.save();

    final Path path1 = Path();
    final Path path2 = Path();
    path1.moveTo(radius, radius);
    path1.lineTo(radius, 0);

    path2.addOval(Rect.fromCircle(radius: 6.0, center: Offset(radius, 0)));

    canvas.drawPath(path1, AgujaPaint);
    canvas.drawPath(path2, AgujaPointsPaint);

    canvas.restore();
  }

  @override
  bool shouldRepaint(AgujaPainter oldDelegate) {
    return false;
  }
}
