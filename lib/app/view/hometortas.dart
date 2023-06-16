import 'package:flutter/material.dart';
import 'package:laboratorio02/app/view/othertortas.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFACEC0),
        title: Text('Nuestras Tortas '),
        
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
          const SizedBox(height: 10),
          Image.asset(
            'assets/images/tortaa.png',
            width: 180,
            height: 150,
          ),
          const SizedBox(height: 1),
                  ElevatedButton(
                    onPressed: () {
                      // Lógica a ejecutar cuando se presiona el botón
                      print('Sera redirigido HometortasPage');
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OtherPage()),
                    );
                    },
                    child: Text('Arandano con Chocolate'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(204, 187, 176, 133)),
                    foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(186, 0, 0, 0)),
                  ),
                  ),
          const SizedBox(height: 5),
          Image.asset(
            'assets/images/tortab.png',
            width: 180,
            height: 150,
          ),
          const SizedBox(height: 1),
                  ElevatedButton(
                    onPressed: () {
                      // Lógica a ejecutar cuando se presiona el botón
                      print('Sera redirigido a la seccion de Homepanaderia');
                      
                    },
                    
                    child: Text('Selva Negra Fresa Clasica'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(204, 187, 176, 133)),
                    foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(186, 0, 0, 0)),
                  ),
                  ),
         
          const SizedBox(height: 5),
          Image.asset(
            'assets/images/tortaf.png',
            width: 180,
            height: 150,
          ),
          const SizedBox(height: 1),
                  ElevatedButton(
                    onPressed: () {
                      // Lógica a ejecutar cuando se presiona el botón
                      print('Oreo con relleno de Manjar');
                    },
                    child: const Text('Oreo con relleno Manjar'),
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(204, 187, 176, 133)),
                    foregroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(186, 0, 0, 0)),
                  ),
                  ), 
        Row(
          mainAxisAlignment: MainAxisAlignment.end, // Alinea los elementos a la izquierda
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xBBB0A171),
                // Color de fondo del círculo
              ),//B0A171
              child: RotatedBox(
                quarterTurns: 3, // Girar el icono 180 grados
                child: IconButton(
                  onPressed: () {
                    // Lógica a ejecutar cuando se presiona el icono de llamada
                    print('Contacto');
                  },
                  icon: const Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
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
