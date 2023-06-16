import 'package:flutter/material.dart';
import 'package:laboratorio02/app/view/homepanaderia.dart';
import 'package:laboratorio02/app/view/hometortas.dart';
import 'package:url_launcher/url_launcher.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 235,
              padding: EdgeInsets.only(top: 50), // Altura del encabezado
              color: Color(0xFFFACEC0), // Color de fondo del encabezado
              child: Image.asset(
                'assets/images/fondo11.jpg', // Ruta de la imagen
                // width: 200,
                height: 180,
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 270),
            child: Column(
        children: [
          const SizedBox(height: 10),
          Text(
            'NUESTROS PRODUCTOS',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(119, 63, 49, 4),
                  //B0A171
                ),
          ),
          const SizedBox(height: 10),
          Image.asset(
            'assets/images/tortaa.png',
            width: 180,
            height: 170,
          ),
          const SizedBox(height: 1),
                  ElevatedButton(
                    onPressed: () {
                      // Lógica a ejecutar cuando se presiona el botón
                      print('Sera redirigido HometortasPage');
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                    },
                    child: Text('Tortas Clasicas y mas...'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(204, 187, 176, 133)),
                    foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(186, 0, 0, 0)),
                  ),
                  ),
          const SizedBox(height: 10),
          Image.asset(
            'assets/images/pan.png',
            width: 180,
            height: 170,
          ),
          const SizedBox(height: 1),
                  ElevatedButton(
                    onPressed: () {
                      // Lógica a ejecutar cuando se presiona el botón
                      print('Sera redirigido a la seccion de Homepanaderia');
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomepanaderiaPage())
                      );
                    },
                    
                    child: Text('Panaderia y Reposteria'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(204, 187, 176, 133)),
                    foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(186, 0, 0, 0)),
                  ),
                  ),
         Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xBBB0A171),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20),
                child: Row(
                  children: [
                    
                    RotatedBox(
                      quarterTurns: 3,
                      child: IconButton(
                        onPressed: () async {
                          
                        },
                        icon: const Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    // Otros elementos aquí...
                  ],
                ),
              ),
            ),
            // Otros elementos aquí...
          ],
        ),
          const SizedBox(height: 10),
          Image.asset(
            'assets/images/panaderia.png',
            width: 180,
            height: 180,
          ),
          const SizedBox(height: 1),
                  ElevatedButton(
                    onPressed: () {
                      // Lógica a ejecutar cuando se presiona el botón
                      print('Sera redirigido a la seccion Tortas');
                    },
                    style: const ButtonStyle(
                      
                      ),
                    child: const Text('Torta Selva Negra'),
                  ), 
        ],
      ),
    ),
        ],
      ),
    );
  }
}


