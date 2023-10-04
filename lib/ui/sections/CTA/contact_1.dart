
import 'dart:ui';

import 'package:aventra_web/ui/widgets/custom_button.dart';
import 'package:aventra_web/ui/widgets/custom_text_input.dart';
import 'package:flutter/material.dart';

import 'package:aventra_web/ui/theme.dart';



class Contact1 extends StatelessWidget {
  Contact1({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  final _formKey = GlobalKey<FormState>();

  String nombre = '';
  String correo = '';
  String presupuesto = '';
  String sitioWeb = '';
  String mensaje = '';

  void _submitForm() {
    final form = _formKey.currentState;

    if (form!.validate()) {
      form.save();

      // Aquí puedes manejar los datos del formulario, como enviarlos a una API, guardarlos en la base de datos, etc.
      print('Nombre: $nombre');
      print('Correo: $correo');
      print('Presupuesto: $presupuesto');
      print('Sitio Web: $sitioWeb');
      print('Mensaje: $mensaje');
    }
  }

  @override
  Widget build(BuildContext context) {

    final theme = MainTheme.lightTheme;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      constraints: const BoxConstraints(
        maxWidth: 1200
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            right: 0,
            child: RotatedBox(
              quarterTurns: 3,
              child: Image.asset(
                'assets/floats/float_2.png',
                height: 900,
              ),
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 800
                ),
                child: Column(
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.headlineMedium,
                    ),
                    
                    const SizedBox(height: 20),
                    
                    Text(
                      subtitle,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: Colors.white.withOpacity(0.8)
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 800
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                    decoration: ShapeDecoration(
                      color: Colors.black.withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1.50, color: Color(0xFF777575)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            const Row(
                              children: [
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Nombre',
                                  ),
                                ),

                                SizedBox(width: 20),

                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Correo Electrónico',
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 30),
                            
                            const Row(
                              children: [
                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Presupuesto',
                                  ),
                                ),

                                SizedBox(width: 20),

                                Expanded(
                                  child: CustomTextInput(
                                    label: 'Sitio web',
                                    sublabel: '(Opcional)',
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 30),

                            const CustomTextInput(
                              label: 'Mensaje',
                              maxLines: 100,
                              height: 300,
                            ),

                            const SizedBox(height: 20),

                            Row(
                              children: [
                                Text(
                                  'Al enviar este formulario, acepta nuestra política de privacidad.',
                                  style: theme.textTheme.bodySmall,
                                ),
                                
                                const Spacer(),

                                CustomButton(
                                  label: 'Enviar',
                                  height: 45,
                                  onPressed: _submitForm,
                                ),
                              ],
                            )
                          ]
                        ),
                      ],
                    ),
                  ),
                ),
              )
          
            ],
          ),
        ],
      ),
    );
  }
}
