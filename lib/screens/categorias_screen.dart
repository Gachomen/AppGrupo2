import 'package:flutter/material.dart';

import 'package:app_ciclo4b_grupo2/model/models.dart';
import 'package:app_ciclo4b_grupo2/fooderlich_theme.dart';
class CategoriasScreen extends StatelessWidget {
  final _categorias = CategoriasDAO().categorias;


  CategoriasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16
      ),
      child: GridView.builder(
          itemCount: _categorias.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, int i){
            return _buildRow(_categorias[i], context);
          }
      ),
    );
  }
  Widget _buildRow(Categorias ct, context){
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              child: Image.asset(
                ct.imagen,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            ct.tipo,
            maxLines: 1,
            style:Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }

}