import 'package:flutter/cupertino.dart';


class Cliente {
  final String id;
  final String nombre;
  final String direccion;
  final String telefono;
  final String celular;


  Cliente(this.id, this.nombre, this.direccion, this.telefono, this.celular);

  Cliente.formJson(Map<String, dynamic> json)
      : id = json['id'].toString(),
        nombre = json['nombre'].toString(),
        direccion = json['direccion'].toString(),
        telefono = json['telefono'].toString(),
        celular = json['celular'].toString();
}