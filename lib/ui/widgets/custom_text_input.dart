import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import 'package:aventra_web/ui/theme.dart';



class CustomTextInput extends StatefulWidget {

  final TextEditingController? controller;
  final int? maxLines;
  final int? maxLength;
  final double? height;
  final String? label;
  final FocusNode? focusNode;
  final String? sublabel;
  final String? prefixIcon;
  final String? hintText;
  final String? errorText;
  final bool counter;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

  const CustomTextInput({
    this.controller,
    this.label,
    this.sublabel,
    this.maxLines,
    this.maxLength,
    this.focusNode,
    this.height,
    this.prefixIcon,
    this.hintText,
    this.onChanged,
    this.onSubmitted,
    this.errorText,
    this.counter = true,
    this.keyboardType,
    Key? key, 
  }) : super(key: key);

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {

  @override
  void dispose() {
    widget.focusNode?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final ThemeData theme = MainTheme.lightTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        if(widget.label != null)
        Row(
          children: [
            Text(
              widget.label!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onBackground.withOpacity(0.8),
              )
            ),
    
            if(widget.sublabel != null)
            const SizedBox(width: 3),
    
            if(widget.sublabel != null)
            Text(
              widget.sublabel!,
              style: theme.textTheme.bodySmall?.copyWith(
                color: const Color(0xff757575)
              )
            )
          ],
        ),
    
        if(widget.label != null)
        const SizedBox(height: 5),
    
        SizedBox(
          height: widget.height,
          child: TextField(
            selectionHeightStyle: BoxHeightStyle.includeLineSpacingMiddle,
            maxLength: widget.maxLength,
            maxLines: widget.maxLines,
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            onChanged: widget.onChanged,
            focusNode: widget.focusNode,
            onSubmitted: widget.onSubmitted,
            decoration: InputDecoration(
              errorText: widget.errorText,
              fillColor: const Color(0xff373737).withOpacity(0.2),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xff757575), width: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xff757575), width: 0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              hintText: widget.hintText,
              counter: widget.counter ? null : const SizedBox(),
              prefixIcon: widget.prefixIcon != null 
                ? Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    widget.prefixIcon!,
                    color: theme.colorScheme.tertiary,
                  ),
                ) 
                : null,
              hintStyle: theme.textTheme.bodySmall
            ),
          ),
        ),
      ],
    );
  }
}
