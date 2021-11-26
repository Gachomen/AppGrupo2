import 'dart:convert' as JSON;
import 'package:app_ciclo4b_grupo2/model/models.dart';
import 'package:app_ciclo4b_grupo2/persistencia/server_connection.dart';

class StoreDAO {
  static final List<Store> stores = [];

  static Future<void> addStoresFromServer() async {
    var svrConn = ServerConnection();
    await svrConn.select('Tienda').then((stores_data) {
      //el nombre de la tabla
      var json = JSON.jsonDecode(stores_data);
      //decodifica el Json
      List records = json["data"];
      records.forEach((element) {
        stores.add(Store.formJson(element));
        //lo envia al constructor del store.dart
      });
    });
  }
}