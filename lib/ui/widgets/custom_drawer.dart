import 'package:flutter/material.dart';

Widget buildDrawer() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        ListTile(
          title: Text('Inicio'),
          onTap: () {
            // Aquí podrías navegar a la página de inicio o realizar otra acción
            // Navigator.pop(context);
          },
        ),
        // Agrega más elementos a tu lista aquí
      ],
    ),
  );
}