import 'package:app_ciclo4b_grupo2/model/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StoreListView extends StatefulWidget{
  @override
  _StoreListViewState createState() => _StoreListViewState();
}

class _StoreListViewState extends State<StoreListView>{
  final st = Store("id", "El Corral", "direccion", "latitud", "longitud", "telefono", "celular", "web", tipoTienda.Tienda, 4.5, "corral_ic", "corral_bg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Negocios'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/' + st.imgUrl + '.png',
                    fit: BoxFit.cover,
                  ),
                  ClipPath(
                    clipper: BackgroundClipper(),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: const BoxDecoration(
                          color: Colors.white
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 75,
                      left: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child:
                        Image.asset(
                          'assets/images/' + st.imgIcon + '.png',
                          height: 100,
                          width: 100,
                        ),
                      )
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(st.nombre,
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const Text(
                  'INFO >',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                RatingBarIndicator(
                  rating: st.rate,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 20.0,
                  direction: Axis.horizontal,
                ),
                Text(
                  st.rate.toString(),
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Flexible(child: _buildStoreList()),
          ],
        ),
      ),
    );
  }

  Widget _buildStoreList() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 5,
        itemBuilder: (context, i) {
          return _buildRow(st);
        });
  }

  Widget _buildRow(Store st) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Image.asset(
              'assets/images/corral_opciones.png',
            ),
            const Text('Opcion'),
          ],
        ),
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.3, size.height);
    path.quadraticBezierTo(
        size.width * 0.53, size.height * 0.2, size.width * 0.5, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}