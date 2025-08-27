import 'package:fausto/features/drawing/presentation/widget/pincel_widget.dart';
import 'package:flutter/material.dart';

class Pintor extends CustomPainter {
  final List<Pincel> pincel;

  Pintor({required this.pincel});

  @override
  void paint(Canvas canvas, Size size) {
    for (var drawingPoint in pincel) {
      final paint = Paint()
        ..color = drawingPoint.cor
        ..isAntiAlias = true
        ..strokeWidth = drawingPoint.tamanho
        ..strokeCap = StrokeCap.round;

      for (var i = 0; i < drawingPoint.offsets.length; i++) {
        var notLastOffset = i != drawingPoint.offsets.length - 1;

        if (notLastOffset) {
          final current = drawingPoint.offsets[i];
          final next = drawingPoint.offsets[i + 1];
          canvas.drawLine(current, next, paint);
        } else {
          /// we do nothing
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
