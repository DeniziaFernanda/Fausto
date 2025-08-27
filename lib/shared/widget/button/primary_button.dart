import 'package:flutter/material.dart';
import 'package:fausto/shared/styles/theme_color.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor; 
  final Color? textColor;
  final double borderRadius;
  final double elevation;
  final VoidCallback onPressed;
  final Widget? leadingIcon;
  final double height;
  final double width;
  final TextStyle? textStyle;
  final bool isLoading; 
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor, 
    this.textColor,
    this.borderRadius = 54,
    this.elevation = 0,
    this.leadingIcon,
    this.height = 48,
    this.width = double.infinity,
    this.textStyle,
    this.isLoading = false, 
  });

  @override
  Widget build(BuildContext context) {
    final colors = ThemeColors(context);

    final buttonBackgroundColor = backgroundColor ?? colors.primary();
    final mytextColor = textColor ?? colors.buttonText();

    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: isLoading ? null: onPressed, 
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonBackgroundColor, 
          disabledBackgroundColor: buttonBackgroundColor,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: isLoading
            ? CircularProgressIndicator(
                backgroundColor: buttonBackgroundColor,
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white), 
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (leadingIcon != null) ...[
                    leadingIcon!,
                    const SizedBox(width: 8),
                  ],
                  Text(
                    text,
                    style: textStyle ??
                        TextStyle(
                          color: mytextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
      ),
    );
  }
}