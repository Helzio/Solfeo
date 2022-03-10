import 'package:flutter/material.dart';

class Guia extends StatelessWidget {
  const Guia({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return CustomPaint(
          size: Size(
            constraints.maxWidth,
            1 / MediaQuery.of(context).devicePixelRatio,
          ),
          painter: GuiaPainter(
            1 / MediaQuery.of(context).devicePixelRatio,
            constraints.maxWidth,
            Colors.white,
          ),
        );
      },
    );
  }
}

class GuiaPainter extends CustomPainter {
  final double pixelSize;
  final double ancho;
  final Color color;

  GuiaPainter(this.pixelSize, this.ancho, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
      Rect.fromLTWH(0, 0, ancho, pixelSize),
      Paint()
        ..style = PaintingStyle.fill
        ..color = color
        ..isAntiAlias = false,
    );
  }

  @override
  bool shouldRepaint(GuiaPainter other) => true;
}
