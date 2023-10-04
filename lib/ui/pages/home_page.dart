import 'package:aventra_web/ui/sections/CTA/contact_1.dart';
import 'package:aventra_web/ui/sections/features/features_1.dart';
import 'package:aventra_web/ui/sections/hero/hero_2.dart';
import 'package:aventra_web/ui/widgets/grid_item.dart';
import 'package:flutter/material.dart';

import 'package:aventra_web/ui/theme.dart';
import 'package:aventra_web/ui/sections/hero/hero_1.dart';
import 'package:aventra_web/ui/widgets/main_nav_bar.dart';
import 'package:aventra_web/ui/widgets/custom_button.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: MainNavBar(),
      // drawer: buildDrawer(),
      // endDrawer: buildDrawer(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        alignment: Alignment.topCenter,
        height: MediaQuery.of(context).size.height,
        constraints: const BoxConstraints(
          maxHeight: 1200
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 800) {
                return _buildWideLayout();
              } else if (constraints.maxWidth > 600) {
                return _buildMediumLayout();
              } else {
                return _buildNarrowLayout();
              }
            },
          ),
        ),
      ),
    );
  }





  Widget _buildWideLayout() {
    
    final theme = MainTheme.lightTheme;
    
    return Column(
      children: [

        Hero1(
          title: 'Impulsando su crecimiento a través del software',
          subtitle: 'Creación de soluciones de software personalizadas adaptadas a sus necesidades comerciales únicas. Deje que nuestros expertos hagan realidad su visión y lleven su negocio a un éxito sin precedentes.',
          rotationAsset: 2,
          actions: [
            CustomButton(
              label: 'Solicitar una cotización',
              onPressed: () {},
            ),

            const SizedBox(width: 20),

            CustomButton(
              label: 'Ver servicios',
              color: theme.colorScheme.secondary,
              onPressed: () {},
            ),
          ]
        ),

        const SizedBox(height: 80),

        const Features1(
          title: 'Siempre pensando en el futuro',
          subtitle: 'No solo resuelve los desafíos de hoy, sino que también lo prepara para el éxito digital del mañana.',
          features: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/paint.svg',
                    title: 'Soluciones personalizadas',
                    subtitle: 'Desarrollamos software personalizado, específicamente adaptado a las necesidades de su negocio. Olvídate de soluciones genéricas y descubre el poder de la personalización.',
                  ),
                ),

                SizedBox(width: 50),
                
                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/graduation.svg',
                    title: 'Innovación y Tecnología',
                    subtitle: 'Utilizamos las últimas tecnologías, como inteligencia artificial y blockchain, para crear soluciones de vanguardia que le permitirán liderar su industria.',
                  ),
                ),
              ],
            ),

            SizedBox(height: 60),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/building.svg',
                    title: 'Comprensión de su negocio',
                    subtitle: 'Nuestro equipo trabaja con usted para comprender profundamente su negocio y sus desafíos. Diseñamos nuestras soluciones teniendo en cuenta sus objetivos específicos.',
                  ),
                ),

                SizedBox(width: 50),

                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/chart_2.svg',
                    title: 'Transformación del negocio',
                    subtitle: 'Nuestras soluciones de software personalizadas tienen el poder de transformar su negocio, mejorar la eficiencia, aumentar la productividad y ofrecer una ventaja competitiva única.',
                  ),
                ),
              ],
            )
          ],
        ),

        const SizedBox(height: 80),

        Hero2(
          title: 'Su socio principal en el desarrollo de proyectos',
          subtitle: '¿Estás cansado de soluciones únicas para todos? En Aventra, creemos que cada empresa es única y merece un software que refleje su carácter distintivo. Nuestros expertos colaboran estrechamente con usted, creando soluciones de software personalizadas diseñadas para abordar sus desafíos más apremiantes.\n\nYa sea para optimizar los procesos internos, mejorar las experiencias de los clientes o aprovechar una ventaja competitiva, lo tenemos cubierto. Aprovechando las tecnologías de vanguardia de IA y blockchain, lo posicionamos a la vanguardia de la industria.',
          actions: [
            CustomButton(
              label: 'Contácta con nosotros',
              onPressed: () {},
            ),
          ]
        ),

        Contact1(
          title: 'Trabajemos juntos', 
          subtitle: 'Nuestro proceso de desarrollo es un viaje meticuloso desde la conceptualización hasta la implementación, garantizando que cada solución se ajuste perfectamente a las necesidades del cliente.',
        )
      ],
    );
  }





  Widget _buildMediumLayout() {
    return const SizedBox();
  }





  Widget _buildNarrowLayout() {
    return const SizedBox();
  }
}