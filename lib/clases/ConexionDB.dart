
class ConexionDB {
  static ConexionDB? _instancia;
  String? nombreDB;

  ConexionDB._();

  factory ConexionDB() {
    _instancia ??= ConexionDB._();
    return _instancia!;
  }
  void establecerNombre(String nombre) {
    nombreDB = nombre;
  }

  String mostrarNombre() {
    return 'Nombre de la Base de Datos: $nombreDB';
  }
}