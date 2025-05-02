import 'package:flutter/material.dart';
import 'package:macro_fit/view/init/init_viewmodel.dart';
import 'package:provider/provider.dart';

class TargetPage extends StatelessWidget {
  const TargetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<InitViewmodel>(context);

    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          //Backgorund
          Positioned.fill(
            child: Container(
              color: Colors.black, // Fondo negro que llena todo
            ),
          ),
          //Back button
          Positioned(
            top: 80,
            left: 16, // Puedes ajustar según tu layout
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent, // Fondo transparente
                shadowColor: Colors.transparent, // Sin sombra
                elevation: 0, // Sin elevación
                shape:
                    const CircleBorder(), // Opcional: forma circular si lo deseas
                padding: const EdgeInsets.all(8),
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white, // Ajusta el color si es necesario
              ),
            ),
          ),

          //Title
          Positioned(
            top: screenHeight * 0.1,
            left: 0,
            right: 0,
            child: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Macro',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Fit',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Title 2
          Positioned(
            top: screenHeight * 0.3,
            left: 0,
            right: 0,
            child: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cuentanos sobre tu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Objetivo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Content
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(
              top: screenHeight * 0.4,
            ), // Ajusta según tus necesidades
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ), // Esquinas redondeadas
            ),
            child: Column(
              children: [
                SizedBox(height: 25),
                //Loose weight
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    onPressed: () {
                      vm.changeTarget("Loose Fat");
                      Navigator.pushNamed(context, 'InfoPage');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0.5,
                      padding: const EdgeInsets.all(
                        0,
                      ), // Quitamos el padding interno del botón
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ), // Bordes redondeados
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(
                        16,
                      ), // Padding interno personalizado
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Row(
                            children: [
                              Icon(
                                Icons.monitor_weight_sharp,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Pérdida de grasa',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Realiza un déficit calórico para reducir el porcentaje de grasa sin perder masa muscular.',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Gain muscle
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción al presionar
                      vm.changeTarget("Gain Muscle");
                      Navigator.pushNamed(context, 'InfoPage');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0.5,
                      padding: const EdgeInsets.all(
                        0,
                      ), // Quitamos el padding interno del botón
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ), // Bordes redondeados
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(
                        16,
                      ), // Padding interno personalizado
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Row(
                            children: [
                              Icon(
                                Icons.sports_gymnastics,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Aumento de masa muscular',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Realiza un superhabit calorico el cual te ayudara a aumentar la masamuscular cuidando el aumento de grasa',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Maitenance
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción al presionar
                      vm.changeTarget("Maintenance");
                      Navigator.pushNamed(context, 'InfoPage');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0.5,
                      padding: const EdgeInsets.all(
                        0,
                      ), // Quitamos el padding interno del botón
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ), // Bordes redondeados
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(
                        16,
                      ), // Padding interno personalizado
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Row(
                            children: [
                              Icon(
                                Icons.monitor_weight_sharp,
                                color: Colors.black,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Mantenimiento',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Conoce cuales son tus macronutrientes para mantener tu peso actual.',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
