import 'package:flutter/material.dart';

enum bussinestype{//creacion de un enumerador en donde puede estar los tipos de la tiendas
  Tienda, Supermercado, Panadera, Ferreteria, Drogueria, Lavaderia
}


class Store{//Creación de la clase store

  String id;
  String name;
  String adress;
  String telephone;
  String web;
  String producto;
  String geolocalizacion;
  String logo;
  String Foto;
  String Facebook;
  String cellphone;
  bussinestype type;

  Store({//constructor de la clase, el required hace que sean necearias todas las variables
    required this.id,
    required this.name,
    required this.adress,
    required this.cellphone,
    required this.Facebook,
    required this.Foto,
    required this.geolocalizacion,
    required this.logo,
    required this.producto,
    required this.telephone,
    required this.web,
    required this.type
  });

}

class StoreDAO{//se crea la clase store dao en donde estara la lista de las tiendas
  String actual="";
  List<Store>stores=[//creación de la lista de las tiendas
    Store(id: '100', name: 'El Corral', adress: "Cll 15 # 8", cellphone: '3232076906',Facebook: 'www.elcorral.com', Foto: 'corral.jpg',geolocalizacion: '156423',logo:'corrallogo.jpg',producto: 'carnes, no se que ne pnkrtgef',telephone: '3254126',web: 'www.google.com',type: bussinestype.Tienda),
    Store(id: '101', name: 'Presto', adress: 'Cll 2 # 4', cellphone: '3232076906', Facebook: 'www.facebook.com/elpresto', Foto: 'presto.jpg',geolocalizacion: '156423',logo:'prestologo.jpg',producto: 'carnes, no se que ne pnkrtgef',telephone: '3254126',web: 'www.presto.com', type: bussinestype.Tienda),
    Store(id: '102', name: 'Exito', adress: 'Cll 64 # 65', cellphone: '3232076906', Facebook: 'www.facebook.com/exito', Foto: 'exito.jpg',geolocalizacion: '156423',logo:'exitologo.jpg',producto: 'De todo detodito',telephone: '3254126',web: 'www.exito.com', type: bussinestype.Supermercado),
    Store(id: '103', name: 'Farmacia', adress: "Cll 15 # 8", cellphone: '3232076906',Facebook: 'www.facebook.com/farmacia', Foto: 'farmatodo.jpg',geolocalizacion: '156423',logo:'farmatodologo.jpg',producto: 'Todo tipo de pastillas medicadas, cuidado personal',telephone: '3254126',web: 'www.farmacia.com', type: bussinestype.Tienda),
    Store(id: '104', name: 'FErreteria', adress: 'Cll 2 # 4', cellphone: '3232076906', Facebook: 'www.facebook.com/Ferreteria', Foto: 'ferreteria.jpg',geolocalizacion: '156423',logo:'ferreterialogo.jpg',producto: 'Todas las herramientas que necesitas',telephone: '3254126',web: 'www.ferreteria.com',type: bussinestype.Tienda),
    Store(id: '105', name: 'Lavanderia', adress: 'Cll 64 # 65', cellphone: '3232076906', Facebook: 'www.facebook.com/Lavanderia', Foto: 'lavanderia.jpg',geolocalizacion: '156423',logo:'lavanderialogo.jpg',producto: 'Lavar tu ropa',telephone: '3254126',web: 'www.lavanderia.com',type: bussinestype.Supermercado),

  ];
  List<Store>get tienda=>stores;//crea una funcion de tipo landa; captura la información, lee y la captura
}