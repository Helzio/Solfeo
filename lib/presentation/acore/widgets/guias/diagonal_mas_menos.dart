import 'package:flutter/material.dart';

class DiagonalMasMenos extends StatelessWidget {
  final Color color;
  final double thicknes;
  const DiagonalMasMenos(
    this.color, {
    Key? key,
    this.thicknes = 1,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return CustomPaint(
          size: Size(
            constraints.maxWidth,
            constraints.maxHeight,
          ),
          painter: DiagonalMasMenosPainter(
            thicknes,
            constraints.maxWidth,
            constraints.maxHeight,
            color,
          ),
        );
      },
    );
  }
}

class DiagonalMasMenosPainter extends CustomPainter {
  final double pixelSize;
  final double ancho;
  final double alto;
  final Color color;

  DiagonalMasMenosPainter(this.pixelSize, this.ancho, this.alto, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.strokeWidth = 2.5;
    paint.strokeCap = StrokeCap.butt;
    canvas.drawLine(
      Offset.zero,
      Offset(ancho, alto),
      paint
        ..style = PaintingStyle.fill
        ..color = color
        ..isAntiAlias = false,
    );
  }

  @override
  bool shouldRepaint(DiagonalMasMenosPainter other) => true;
}
