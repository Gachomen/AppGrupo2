import 'package:flutter/cupertino.dart';


class Producto {
  final String id;
  final String producto;
  final String tipo;
  final double valor;
  final String id_tienda_fk;
  final String img;


  Producto(this.id, this.producto, this.tipo, this.valor, this.id_tienda_fk,
      this.img);

  Producto.formJson(Map<String, dynamic> json)
      : id = json['id'].toString(),
        producto = json['producto'].toString(),
        tipo = json['tipo'].toString(),
        valor = double.parse(json['valor'].toString()),
        id_tienda_fk = json['id_tienda_fk'].toString(),
        img = json['img'].toString();
}