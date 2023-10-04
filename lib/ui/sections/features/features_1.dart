
import 'package:flutter/material.dart';

import 'package:aventra_web/ui/theme.dart';
import 'package:aventra_web/ui/widgets/grid_item.dart';



class Features1 extends StatelessWidget {
  const Features1({
    super.key,
    required this.title,
    required this.subtitle,
    this.actions,
    this.features,
  });

  final String title;
  final String subtitle;
  final List<Widget>? actions;
  final List<Widget>? features;

  @override
  Widget build(BuildContext context) {

    final theme = MainTheme.lightTheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      width: 1200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Container(
            constraints: const BoxConstraints(
              maxWidth: 800
            ),
            child: Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium,
                ),
                
                const SizedBox(height: 20),
                
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withOpacity(0.8)
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 50),

          Column(
            children: features ?? [],
          ),

          if (actions != null)
          const SizedBox(height: 60),
      
          if (actions != null)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: actions!,
          ),
      
        ],
      ),
    );
  }
}
