import 'package:flutter/material.dart';

class ListaNegocios extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Negocios'),),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget> [
              Text('pagina lista de negocios')
            ],
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}