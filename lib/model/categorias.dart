class Categorias{
  final String tipo;
  final String imagen;
Categorias({
  required this.tipo,
  required this.imagen,
  });
}

class CategoriasDAO{
  String actial = ' ';
  List<Categorias>categorias=[
    Categorias(tipo: 'Restaurantes', imagen: 'assets/imagenes/restaurante_categoria.jpg'),
    Categorias(tipo: 'Supermercados', imagen: 'assets/imagenes/supermercado_categoria.jpg'),
    Categorias(tipo: 'Lavanderia', imagen: 'assets/imagenes/lavanderia_categoria.jpg'),
    Categorias(tipo: 'Ferreteria', imagen: 'assets/imagenes/ferreteria_categoria.jpg'),
    Categorias(tipo: 'Farmacia', imagen: 'assets/imagenes/farmacia_categoria.jpg'),
    Categorias(tipo: 'Mascotas', imagen: 'assets/imagenes/mascotas_categoria.jpg'),
    Categorias(tipo: 'Postres', imagen: 'assets/imagenes/postres_categoria.jpg'),
    Categorias(tipo: 'Panaderia', imagen: 'assets/imagenes/panaderias_categoria.jpg'),
    Categorias(tipo: 'Licores', imagen: 'assets/imagenes/licores_categoria.jpg'),
    Categorias(tipo: 'Detalles', imagen: 'assets/imagenes/detalles_categoria.jpg')
  ];
}

