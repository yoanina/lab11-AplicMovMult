import 'package:flutter/material.dart';
import 'package:laboratorio02/app/view/hometortas.dart';

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFACEC0),
        title: Text('Arandano con Chocolate'),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 90,
              padding: EdgeInsets.only(top: 5), // Altura del encabezado
              // color: Color.fromARGB(255, 232, 209, 169), // Color de fondo del encabezado
              child: Image.asset(
                'assets/images/logop.png', // Ruta de la imagen
                // width: 200,
                height: 80,
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(top: 80),
            child: Column(
        children: [
          const SizedBox(height: 8),
          Text(
            'Productos frescos y deliciosos',
            style: Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(119, 63, 49, 4),
                  //B0A171
                ),
          ),
          const SizedBox(height: 1),
          Image.asset(
            'assets/images/tortaa.png',
            width: 190,
            height: 200,
          ),
          const SizedBox(height: 1),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20), // Ajusta el valor de padding según tu preferencia
            child: Text(
              'Sumérgete en un bocado de placer con nuestra torta de arándano con chocolate. Cada rebanada es un festival de sabores, donde los jugosos arándanos se encuentran con el rico y cremoso chocolate. El esponjoso bizcocho de chocolate se combina armoniosamente con los arándanos, liberando una explosión de sabores en tu boca.!',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(119, 0, 0, 0),
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
                    onPressed: () {
                      // Lógica a ejecutar cuando se presiona el botón
                      print('Sera redirigido HometortasPage');
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                    },
                    child: Text('Lo quiero!'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(204, 187, 176, 133)),
                    foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(186, 0, 0, 0)),
                  ),
                  ),
          const SizedBox(height: 10),
          ElevatedButton(
                    onPressed: () {
                      // Lógica a ejecutar cuando se presiona el botón
                      print('Sera redirigido HometortasPage');
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                    },
                    child: Text('Quiero ver mas tortas!'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(204, 187, 176, 133)),
                    foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(186, 0, 0, 0)),
                  ),
                  ),
        const SizedBox(height: 40),
        
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
                        onPressed: () {
                          print('Contacto');
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


        ],
      ),
    ),
        ],
      ),
    );
  }
}

  // child: ElevatedButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   child: Text('Volver'),
        // ),
