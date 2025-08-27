import 'package:flutter/material.dart';
import 'dart:math' as math;

class RadialProgressPainter extends CustomPainter {
  final double percentage;
  final Color completedColor;
  final Color backgroundColor;
  final double strokeWidth;

  RadialProgressPainter({
    required this.percentage,
    required this.completedColor,
    required this.backgroundColor,
    this.strokeWidth = 10.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width, size.height) / 2 - strokeWidth / 2;

    // Desenha o círculo de fundo
    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, backgroundPaint);

    // Desenha o arco de progresso
    final progressPaint = Paint()
      ..color = completedColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final sweepAngle = 2 * math.pi * (percentage / 100);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -math.pi / 2, // Começa do topo
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class RadialProgressWidget extends StatelessWidget {
  final double percentage;
  final Color completedColor;
  final Color backgroundColor;
  final double strokeWidth;
  final double size;
  final TextStyle? textStyle;

  const RadialProgressWidget({
    super.key,
    required this.percentage,
    required this.completedColor,
    required this.backgroundColor,
    this.strokeWidth = 10.0,
    this.size = 100.0,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: Size(size, size),
            painter: RadialProgressPainter(
              percentage: percentage,
              completedColor: completedColor,
              backgroundColor: backgroundColor,
              strokeWidth: strokeWidth,
            ),
          ),
          Text(
            '${percentage.toInt()}%',
            style: textStyle ??
                TextStyle(
                  fontSize: size * 0.15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
