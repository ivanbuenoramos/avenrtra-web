import 'package:flutter/material.dart';

import 'package:aventra_web/ui/theme.dart';



class Hero1 extends StatelessWidget {
  const Hero1({
    super.key,
    required this.title,
    required this.subtitle,
    this.actions,
    this.asset,
    this.rotationAsset,
    this.assetHeight,
  });

  final String title;
  final String subtitle;
  final List<Widget>? actions;
  final String? asset;
  final int? rotationAsset;
  final double? assetHeight;

  @override
  Widget build(BuildContext context) {

    final theme = MainTheme.lightTheme;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 40),
      width: 1200,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text(
                  title,
                  style: theme.textTheme.headlineLarge,
                ),
          
                const SizedBox(height: 30),
          
                Text(
                  subtitle,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withOpacity(0.8)
                  ),
                ),

                if (actions != null)
                const SizedBox(height: 20),
          
                if (actions != null)
                Row(
                  children: actions!,
                ),
          
              ],
            ),
          ),

          const SizedBox(width: 80),

          RotatedBox(
            quarterTurns: rotationAsset ?? 0,
            child: Image.asset(
              asset ?? 'assets/floats/float_1.png',
              height: assetHeight ?? 480,
            ),
          ),
        ],
      ),
    );
  }
}
