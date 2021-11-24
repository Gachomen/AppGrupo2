
import 'package:flutter/material.dart';
import 'package:app_ciclo4b_grupo2/model/models.dart';

class InformationStoreView extends StatefulWidget{
  final Store tienda;
  InformationStoreView(this.tienda);
  @override
  _InformationStoreView createState() => _InformationStoreView(tienda);
}

class _InformationStoreView extends State<InformationStoreView> {
  final Store tienda2;
  _InformationStoreView(this.tienda2);
  @override
    Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              const Text('Información General\n',style: TextStyle(color: Colors.pinkAccent, fontSize: 15,)),
              _buildButtonRow(Colors.black38, Icons.location_on, tienda2.adress),
              _buildButtonRow(Colors.black38, Icons.call, tienda2.telephone),
              _buildButtonRow(Colors.black38, Icons.ad_units, tienda2.cellphone),
              _buildButtonRow(Colors.black38, Icons.computer_outlined, tienda2.web),
              _buildButtonRow(Colors.black38, Icons.facebook_outlined, tienda2.Facebook),
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
           ),
          Column(
            children: [
              Image.asset(
                'assets/imagenes/'+tienda2.Foto,
                width: 200,
                height: 240,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
    );
    Widget buttonSection2 = RaisedButton(
      color: Colors.pinkAccent,
        textColor: Colors.white,
        child: const Text(
          'Ir al sitio web',
          style: TextStyle(fontSize: 20.0,),
        ),
        onPressed:(){
        print('https://www.google.com');
    }
    );
    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Ubicación',
        softWrap: true,
      ),
    );
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    tienda2.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
                Text(
                  tienda2.producto+' '+tienda2.type.toString(),
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.amber[500],
          ),
          Icon(
            Icons.star,
            color: Colors.amber[500],
          ),
          Icon(
            Icons.star,
            color: Colors.amber[500],
          ),
          Icon(
            Icons.star,
            color: Colors.amber[500],
          ),
          const Icon(
            Icons.star,
            color: Colors.black45,
          ),
          const Text('4'),
        ],
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text('Información Especifica'),
          backgroundColor: Colors.pinkAccent,
        ),

        body: ListView(
          children:[
            Image.asset(
              'assets/imagenes/'+tienda2.logo,
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            buttonSection2,
          ],
        ),
    );
  }

  Row _buildButtonRow(Color color, IconData icon, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color),
         Text(
            label,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
      ],
    );
  }

}