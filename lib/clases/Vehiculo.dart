class Vehiculo {
  String? tipo;
  int? capacidad;
  String? motor;

  Vehiculo.desdeMotor(this.tipo, this.motor);

  Vehiculo.conCapacidad(this.tipo, this.capacidad);

  String mostrarDetalles() {
    return 'Tipo: $tipo, Capacidad: $capacidad, Motor: $motor';
  }
}