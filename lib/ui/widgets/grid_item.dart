import 'package:aventra_web/ui/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? asset;

  const GridItem({
    required this.title,
    required this.subtitle,
    this.asset,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final ThemeData theme = MainTheme.lightTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        if(asset == null)
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,  // Puedes personalizar el color aquí
          ),
        ),
        if(asset != null)
        SvgPicture.asset(
          asset!,
          height: 80,
        ),
        
        const SizedBox(height: 20),

        Text(
          title,
          textAlign: TextAlign.start,
          style: theme.textTheme.headlineSmall,
        ),

        const SizedBox(height: 20),

        Text(
          subtitle,
          textAlign: TextAlign.start,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: Colors.white.withOpacity(0.8)
          ),
        ),
        
      ],
    );
  }
}
