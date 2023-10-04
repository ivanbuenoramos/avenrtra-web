import 'package:aventra_web/ui/theme.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color? color;
  final double? height;
  final double? borderRadius;
  final EdgeInsets? padding;
  final Color? textColor;

  final ThemeData theme = MainTheme.lightTheme;

  CustomButton({super.key, 
    required this.onPressed,
    required this.label,
    this.color,
    this.height,
    this.borderRadius,
    this.padding,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ClipSmoothRect(
      radius: SmoothBorderRadius(
        cornerRadius: borderRadius ?? 12,
        cornerSmoothing: 1,
      ),
      child: SizedBox(
        height: height ?? 55,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? theme.colorScheme.primary,
            textStyle: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w500
            ),
            splashFactory: NoSplash.splashFactory,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            shape: SmoothRectangleBorder(
              borderRadius: SmoothBorderRadius(
                cornerRadius: borderRadius ?? 10,
                cornerSmoothing: 1,
              )
            ),
          ),
          child: Container(
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: 17.0
              ),
            ),
          ),
        ),
      ),
    );
  }
}