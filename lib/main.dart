import 'package:flutter/material.dart';
import 'clases/Vehiculo.dart';
import 'clases/ConexionDB.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ejemplo de uso de los constructores por nombre de la clase Vehiculo
    var vehiculo1 = Vehiculo.desdeMotor('Carro', 'Motor V6');
    var vehiculo2 = Vehiculo.conCapacidad('Trailer', 5000);

    // Ejemplo de uso del constructor de fábrica de la clase ConexionDB 
    var conexion1 = ConexionDB();
    conexion1.establecerNombre('MiBaseDeDatos1');
    var conexion2 = ConexionDB(); // Se obtiene la misma instancia creada anteriormente
     conexion2.establecerNombre('MiBaseDeDatos2');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Instancias de Vehículos'),//Instancias de Vehículos
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Instancias de Vehículos:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Vehículo 1: ${vehiculo1.mostrarDetalles()}'),
                  Text('Vehículo 2: ${vehiculo2.mostrarDetalles()}'),
                ],
              ),
            ),
            const Text(
              'Instancias de ConexionDB:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Conexión 1: ${conexion1.mostrarNombre()}'),
                  Text('Conexión 2: ${conexion2.mostrarNombre()}'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}






