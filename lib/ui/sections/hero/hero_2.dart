import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:aventra_web/ui/theme.dart';



class Hero2 extends StatelessWidget {
  const Hero2({
    super.key,
    required this.title,
    required this.subtitle,
    this.actions,
  });

  final String title;
  final String subtitle;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {

    final theme = MainTheme.lightTheme;

    return Container(
      width: 1200,
      child: Row(
        children: [

          Stack(
            alignment: Alignment.center,
            children: [

              Image.asset(
                'assets/floats/float_2.png',
                height: 800,
              ),

              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    decoration: ShapeDecoration(
                      color: Colors.black.withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1.50, color: Color(0xFF777575)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1, color: Color(0xFF454444)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/img/img_1.png", 
                              height: 370,
                            )
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),

          const SizedBox(width: 80),

          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text(
                  title,
                  style: theme.textTheme.headlineMedium,
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
        ],
      ),
    );
  }
}
