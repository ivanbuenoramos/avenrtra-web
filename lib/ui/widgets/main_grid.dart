import 'package:aventra_web/ui/widgets/grid_item.dart';
import 'package:flutter/material.dart';

class MainGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 400,  // Puedes ajustar este valor según tus necesidades
        childAspectRatio: 3 / 2,  // Ajusta la relación de aspecto según tus necesidades
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemBuilder: (context, index) {
        return GridItem(
          title: 'Título $index',
          subtitle: 'Subtítulo $index',
        );
      },
      itemCount: 6,  // Puedes ajustar la cantidad de elementos aquí
    );
  }
}

void main() => runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.black,
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: MainGrid(),
    ),
  ),
));
