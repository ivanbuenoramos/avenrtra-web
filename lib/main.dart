import 'package:flutter/material.dart';

import 'package:aventra_web/ui/theme.dart';
import 'package:aventra_web/ui/pages/home_page.dart';



void main() {
  runApp(AventraApp());
}

class AventraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // var textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return MaterialApp(
      title: 'Aventra Web',
      debugShowCheckedModeBanner: false,
      theme: MainTheme.lightTheme,
      home: HomePage(),
    );
  }
}
