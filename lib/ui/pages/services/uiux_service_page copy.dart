import 'package:aventra_web/ui/sections/CTA/contact_1.dart';
import 'package:aventra_web/ui/sections/features/features_1.dart';
import 'package:aventra_web/ui/sections/hero/hero_2.dart';
import 'package:aventra_web/ui/widgets/grid_item.dart';
import 'package:flutter/material.dart';

import 'package:aventra_web/ui/theme.dart';
import 'package:aventra_web/ui/sections/hero/hero_1.dart';
import 'package:aventra_web/ui/widgets/main_nav_bar.dart';
import 'package:aventra_web/ui/widgets/custom_button.dart';



class UiuxPage extends StatelessWidget {
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
          title: 'Creando excelencia digital a través del diseño',
          subtitle: 'Creemos que el diseño no es meramente estético sino que consiste en crear experiencias vitales en la era digital actual. Cada píxel y cada interacción son fundamentales para el éxito de una aplicación. Nuestro equipo crea experiencias digitales atractivas que impulsan resultados.',
          asset: 'assets/img/img_2.png',
          actions: [
            CustomButton(
              label: 'Solicitar una cotización',
              onPressed: () {},
            ),
          ]
        ),

        const SizedBox(height: 80),
        
        const Hero2(
          title: 'Nuestra filosofía',
          subtitle: '''En el centro de cada diseño se encuentra el usuario. Priorizamos comprender las necesidades, los deseos y los puntos débiles de los usuarios para crear experiencias que sean intuitivas, agradables y adaptadas a la audiencia.

El diseño juega un papel importante en la comunicación de la identidad de la marca. Nos aseguramos de que la estética del diseño esté sincronizada con la voz, los valores y el espíritu de su marca.

El panorama digital está en constante evolución. Nos desafiamos a pensar de manera innovadora, aprovechando las últimas tendencias y técnicas de diseño para mantener sus productos de software actualizados y relevantes.''',
        ),

        const SizedBox(height: 80),

        const Features1(
          title: 'Servicios que ofrecemos',
          subtitle: 'No solo resuelve los desafíos de hoy, sino que también lo prepara para el éxito digital del mañana.',
          features: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/paint.svg',
                    title: 'Diseño UI/UX',
                    subtitle: 'Desde estructuras alámbricas hasta prototipos interactivos, nuestro equipo de diseño UI/UX crea interfaces que no solo son hermosas sino también funcionales, lo que garantiza que los usuarios tengan una experiencia perfecta en todos los dispositivos.',
                  ),
                ),
                
                SizedBox(width: 50),

                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/graduation.svg',
                    title: 'Marca e identidad',
                    subtitle: 'Más allá de las interfaces digitales, también ofrecemos servicios de marca, que incluyen diseño de logotipos, pautas de marca y más, garantizando una identidad visual coherente en todos los puntos de contacto.',
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
                    title: 'Diseño web',
                    subtitle: 'En la era digital actual, su sitio web es su tarjeta de presentación. Nos especializamos en la creación de sitios web responsivos, compatibles con SEO e inmersivos que resuenan con su público objetivo.',
                  ),
                ),

                SizedBox(width: 50),

                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/chart_2.svg',
                    title: 'Diseño de aplicaciones móviles',
                    subtitle: 'Con la proliferación de dispositivos móviles, tener un diseño de aplicación atractivo es crucial. Nuestros diseñadores están capacitados para crear interfaces móviles atractivas que cautiven a los usuarios desde el primer toque.',
                  ),
                ),
              ],
            )
          ],
        ),

        const SizedBox(height: 80),

        const Features1(
          title: 'Servicios que ofrecemos',
          subtitle: 'No solo resuelve los desafíos de hoy, sino que también lo prepara para el éxito digital del mañana.',
          features: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/paint.svg',
                    title: '1. Descubrimiento e investigación',
                    subtitle: 'Comprender sus objetivos, audiencia y competencia es la base de nuestro proceso de diseño.',
                  ),
                ),
                
                SizedBox(width: 50),

                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/graduation.svg',
                    title: '2. Estructura alámbrica y prototipos',
                    subtitle: 'Sentando las bases, creamos una representación visual del viaje del usuario, asegurando una estructura sólida para el diseño.',
                  ),
                ),

                SizedBox(width: 50),

                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/building.svg',
                    title: '3. Diseño visual',
                    subtitle: 'Una vez que el plano está listo, nuestros diseñadores le dan vida al prototipo, considerando colores, tipografía e imágenes.',
                  ),
                ),

                SizedBox(width: 50),

                Expanded(
                  child: GridItem(
                    asset: 'assets/icons/chart_2.svg',
                    title: '4. Finalización y traspaso',
                    subtitle: 'Recopilamos comentarios de usuarios reales para validar y perfeccionar nuestros diseños, luego proporcionamos todos los activos necesarios.',
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