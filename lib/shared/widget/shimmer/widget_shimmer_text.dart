import 'package:flutter/material.dart';
import 'package:fausto/shared/styles/theme_color.dart';
import 'package:shimmer/shimmer.dart';

class WidgetShimmertext extends StatelessWidget {
  final double width;
  final double height;

  const WidgetShimmertext({
    super.key,
    required this.width, 
    required this.height
  });

  @override
  Widget build(BuildContext context) {
    final colors = ThemeColors(context);
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: colors.text(),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
