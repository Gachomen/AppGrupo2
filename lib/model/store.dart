import 'package:flutter/cupertino.dart';

enum tipoTienda{
  Tienda, Drogueria, Ferreteria, Lavanderia, Zapateria, Panaderia, Bar, Floristeria, Supermercado, Restaurante // Sin tildes.
}

class Store {
  final String id;
  final String nombre;
  final String direccion;
  final String latitud;
  final String longitud;
  final String telefono;
  final String celular;
  final String web;
  final tipoTienda tipo;
  final String rate;
  final String imgIcon;
  final String imgUrl;


  Store(
      this.id,
      this.nombre,
      this.direccion,
      this.latitud,
      this.longitud,
      this.telefono,
      this.celular,
      this.web,
      this.tipo,
      this.rate,
      this.imgIcon,
      this.imgUrl);

  Store.formJson(Map<String, dynamic> json)
      : id = json['id'].toString(),
        nombre = json['nombre'].toString(),
        direccion = json['direccion'].toString(),
        latitud = json['latitud'].toString(),
        longitud = json['longitud'].toString(),
        telefono = json['telefono'].toString(),
        celular = json['celular'].toString(),
        web = json['web'].toString(),
        tipo = tipoTienda.values.firstWhere((element) =>
        element.toString() == 'tipoTienda.'+json['tipo'].toString()),
        rate= json['rate'].toString(),
        imgIcon=json['logo'].toString(),
        imgUrl=json['foto'].toString();
}