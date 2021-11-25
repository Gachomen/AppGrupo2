import 'package:flutter/material.dart';

import 'models.dart';

class PerfilManager extends ChangeNotifier{
  Usuario get getUsuario =>  Usuario(
      nombre: 'Luis',
      apellido: 'Caceres',
      direccion: 'Cll 17b # 17-74',
      telefono: '3232076906',
      celular: '3232076906'
  );
  bool get didSelectUser => _didSelectUser;
  //bool get didTapOnRaywenderlich => _tapOnRaywenderlich;
  bool get darkMode => _darkMode;

  var _didSelectUser = false;
  var _tapOnRaywenderlich = false;
  var _darkMode = false;

  void set darkMode(bool darkMode) {
    _darkMode = darkMode;
    notifyListeners();
  }

  /*void tapOnRaywenderlich(bool selected) {
    _tapOnRaywenderlich = selected;
    notifyListeners();
  }*/

  void tapOnPerfil(bool selected) {//puede que no lo necesitemos
    _didSelectUser = selected;
    notifyListeners();
  }
}