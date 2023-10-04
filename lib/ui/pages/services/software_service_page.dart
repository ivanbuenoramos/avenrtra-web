import 'package:aventra_web/ui/sections/CTA/contact_1.dart';
import 'package:aventra_web/ui/sections/features/features_1.dart';
import 'package:aventra_web/ui/sections/hero/hero_2.dart';
import 'package:aventra_web/ui/widgets/grid_item.dart';
import 'package:flutter/material.dart';

import 'package:aventra_web/ui/theme.dart';
import 'package:aventra_web/ui/sections/hero/hero_1.dart';
import 'package:aventra_web/ui/widgets/main_nav_bar.dart';
import 'package:aventra_web/ui/widgets/custom_button.dart';



class SoftwarePage extends StatelessWidget {
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
          title: 'Soluciones de software de alto rendimiento para su negocio',
          subtitle: 'En el ámbito interconectado de la era digital, el software es la fuerza que impulsa la transformación, la innovación y la eficiencia. En Dixwe, aprovechamos esta fuerza para crear soluciones que impulsen a las empresas hacia adelante.',
          asset: 'assets/img/img_3.png',
          assetHeight: 400,

          actions: [
            CustomButton(
              label: 'Solicitar una cotización',
              onPressed: () {},
            ),
          ]
        ),

        const SizedBox(height: 80),
        
        const Hero2(
          title: 'Nuestro espíritu',
          subtitle: '''Ágil y adaptable: en el dinámico mundo del software, la flexibilidad es clave. Nuestra metodología de desarrollo es ágil y garantiza una entrega oportuna, adaptabilidad al cambio y ciclos de retroalimentación consistentes.

La calidad primero: priorizamos la calidad en cada etapa, desde la planificación inicial hasta la implementación. Pruebas rigurosas, revisiones de código y mejores prácticas son parte integral de nuestro proceso.

Escalabilidad y rendimiento: a medida que su negocio crece, también lo hacen sus necesidades de software. Diseñamos soluciones teniendo en cuenta la escalabilidad, garantizando un rendimiento fluido independientemente de la carga de usuarios.''',
        ),

        const SizedBox(height: 80),

        const Features1(
          title: 'Nuestros servicios',
          subtitle: 'No solo resuelve los desafíos de hoy, sino que también lo prepara para el éxito digital del mañana.',
          features: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/terminal.svg',
                    title: 'Desarrollo de software personalizado',
                    subtitle: 'Soluciones personalizadas diseñadas desde cero, que atienden requisitos y desafíos comerciales únicos.',
                  ),
                ),
                
                SizedBox(width: 50),

                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/building.svg',
                    title: 'Soluciones de software empresarial',
                    subtitle: 'Agilización de los procesos comerciales y mejora de la eficiencia operativa con soluciones de software empresarial sólidas, integradas y escalables.',
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
                    asset: 'assets/icons/web.svg',
                    title: 'Desarrollo de aplicaciones web',
                    subtitle: 'Creación de aplicaciones web potentes, receptivas y fáciles de usar que se ejecutan sin problemas en dispositivos y plataformas.',
                  ),
                ),

                SizedBox(width: 50),

                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/phone.svg',
                    title: 'Desarrollo de aplicaciones móviles',
                    subtitle: 'Creación de aplicaciones móviles intuitivas y de alto rendimiento para iOS, Android y necesidades multiplataforma.',
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
                    asset: 'assets/icons/graduation.svg',
                    title: 'Consultoría de software',
                    subtitle: 'Aproveche nuestra experiencia para trazar su estrategia de software, optimizar procesos e impulsar la transformación digital.',
                  ),
                ),

                SizedBox(width: 50),

                Spacer(),
              ],
            )
          ],
        ),

        const SizedBox(height: 80),

        const Features1(
          title: 'Proceso de desarrollo',
          subtitle: 'Nuestro proceso de desarrollo es un viaje meticuloso desde la conceptualización hasta la implementación, garantizando que cada solución se ajuste perfectamente a las necesidades del cliente.',
          features: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/chart.svg',
                    title: '1. Análisis de requisitos',
                    subtitle: 'Colaborar estrechamente con los clientes para comprender los objetivos, desafíos y expectativas.',
                  ),
                ),
                
                SizedBox(width: 50),

                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/terminal.svg',
                    title: '2. Planificación, Arquitectura y Desarrollo',
                    subtitle: 'Diseñar el modelo de la solución, considerando la escalabilidad, la seguridad y el rendimiento, utilizando tecnologías y marcos de vanguardia.',
                  ),
                ),

                SizedBox(width: 50),

                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/star.svg',
                    title: '3. Garantía de calidad',
                    subtitle: 'Pruebas rigurosas de funcionalidad, rendimiento y seguridad.',
                  ),
                ),

                SizedBox(width: 50),

                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/airdrop.svg',
                    title: '4. Implementación y mantenimiento',
                    subtitle: 'Lanzar la solución y brindar soporte continuo.',
                  ),
                ),
              ],
            ),
          ],
        ),

        const SizedBox(height: 80),

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