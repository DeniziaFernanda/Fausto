import 'package:flutter/material.dart';
import 'package:fausto/shared/styles/theme_color.dart';
import 'package:shimmer/shimmer.dart';

class WidgetShimmeravatar extends StatelessWidget {
  const WidgetShimmeravatar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = ThemeColors(context);
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colors.text(),
        ),
      ),
    );
  }
}