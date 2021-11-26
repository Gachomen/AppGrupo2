import 'package:flutter/cupertino.dart';


class Pedido {
  final String id;
  final double valor_total;
  final String fecha_pedido;
  final String cliente_id;
  final String tienda_id;
  final String producto;


  Pedido(this.id, this.valor_total, this.fecha_pedido, this.cliente_id,
      this.tienda_id, this.producto);

  Pedido.formJson(Map<String, dynamic> json)
      : id = json['id'].toString(),
        valor_total = double.parse(json['valor_total'].toString()),
        fecha_pedido = json['fecha_pedido'].toString(),
        cliente_id = json['cliente_id'].toString(),
        tienda_id = json['tienda_id'].toString(),
        producto = json['producto'].toString();
}