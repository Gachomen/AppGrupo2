import 'dart:async';
import 'package:flutter/material.dart';

// 1
class FooderlichTab {
  static const int perfil = 0;
  static const int inicio = 1;
  static const int carrito = 2;
}

class AppStateManager extends ChangeNotifier {
  // 2
  bool _initialized = false;
  // 3
  bool _loggedIn = false;
  bool _goingHome = false;
  // 5
  int _selectedTab = FooderlichTab.perfil;

  // 6
  bool get isInitialized => _initialized;
  bool get isLoggedIn => _loggedIn;
  int get getSelectedTab => _selectedTab;

  void initializeApp() {
    // 7
    Timer(const Duration(milliseconds: 2000), () {
      // 8
      _initialized = true;
      // 9
      notifyListeners();
    },
    );
  }

  void login(String username, String password) {
    // 10
    _loggedIn = true;

    notifyListeners();
  }

// TODO: Add completeOnboarding
  void goToTab(index) {
    _selectedTab = index;
    notifyListeners();

  }
  void goToRecipes() {     //este tipo de funcion nos ayudara a que si el usuario no tiene nada en si carrito lo rediriga a
    _selectedTab = FooderlichTab.inicio;
    notifyListeners();
  }


  void logout() {
    // 12
    _loggedIn = false;
    _initialized = false;
    _selectedTab = 0;

    // 13
    initializeApp();
    // 14
    notifyListeners();
  }

}
