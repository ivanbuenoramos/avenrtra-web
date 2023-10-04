import 'package:aventra_web/ui/pages/home_page.dart';
import 'package:aventra_web/ui/pages/services/software_service_page.dart';
import 'package:aventra_web/ui/pages/services/uiux_service_page%20copy.dart';
import 'package:aventra_web/ui/theme.dart';
import 'package:aventra_web/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainNavBar extends StatelessWidget implements PreferredSizeWidget {
  final double appBarHeight;

  MainNavBar({this.appBarHeight = kToolbarHeight});

  final ThemeData theme = MainTheme.lightTheme;

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);

  final LayerLink _layerLink = LayerLink();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return _buildWideLayout(context);
        } else {
          return _buildNarrowLayout(context);
        }
      },
    );
  }

  AppBar _buildWideLayout(BuildContext context) {
    return AppBar(
      titleSpacing: 0.0,
      title: _buildContent(context),
      backgroundColor: Colors.transparent,
      elevation: 1,
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }

  PreferredSize _buildNarrowLayout(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(110),
      child: AppBar(
        title: SvgPicture.asset(
          'assets/svg/aventra.svg',
          height: 24.0,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.bottomCenter,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/svg/aventra.svg',
                height: 24.0,
                color: Colors.white,
              ),
              _buildMenu(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenu(context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: Text(
            'Inicio',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () {},
          child: Text(
            'Nosotros',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
          ),
        ),
        const SizedBox(width: 20),
        _servicesDropdownButton(),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () {},
          child: Text(
            'Porfolio',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
          ),
        ),
        const SizedBox(width: 20),
        TextButton(
          onPressed: () {},
          child: Text(
            'Blog',
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onBackground,
            ),
          ),
        ),
        const SizedBox(width: 20),
        CustomButton(
          onPressed: () {},
          color: Colors.white,
          textColor: theme.colorScheme.secondary, 
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 35,
          borderRadius: 6,
          label:'Contacto',
        )
      ],
    );
  }

  Widget buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menu'),
          ),
          ListTile(
            title: const Text('Inicio'),
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

 Widget _servicesDropdownButton() {
    return PopupMenuButton(
      
      itemBuilder: (context) => [
        PopupMenuItem(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          child: Row(
            children: [
              // Image.asset('assets/img/img_3.png', height: 300,), 
              Expanded( 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildServiceItem(context, 'Diseño', 'Transformando ideas con diseños fáciles de usar y centrados en Ul/UX.', UiuxPage()),
                    _buildServiceItem(context, 'Desarrollo de software', 'Aplicaciones de alto rendimiento con integraciones de backend escalables.', SoftwarePage()),
                    _buildServiceItem(context, 'Inteligencia artificial', 'Integraciones GPT perfectas que utilizan microservicios para una escalabilidad mejorada.', null),
                    _buildServiceItem(context, 'Consultoria de software', 'Orientación experta desde la selección de tecnología hasta la optimización de procesos.', null),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
      child: Text(
        'Servicios',
        style: theme.textTheme.bodySmall?.copyWith(
          color: theme.colorScheme.onBackground,
        ),
      ),
    );
  }

  Widget _buildServiceItem(context, String title, String subtitle, StatelessWidget? page) {
    return InkWell(
      onTap: () {
        if (page != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal : 8, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              title, 
              style: const TextStyle(
                fontWeight: FontWeight.bold
              )
            ),

            const SizedBox(height: 5),

            Text(
              subtitle,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.tertiary,
                fontWeight: FontWeight.w300
              )
            ),
          ],
        ),
      ),
    );
  }
}
