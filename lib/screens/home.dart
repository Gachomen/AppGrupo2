import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'categorias_screen.dart';
import 'perfil_screen.dart';
import 'pedidos_screen.dart';
import 'package:app_ciclo4b_grupo2/model/models.dart';

class Home extends StatefulWidget {
  static MaterialPage page(int currentTab) {
    return MaterialPage(
      name: AppPages.home,
      key: ValueKey(AppPages.home),
      child: Home(
        currentTab: currentTab,
      ),
    );
  }


  const Home({
    Key? key,
    required this.currentTab,
  }) : super(key: key);

  final int currentTab;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static List<Widget> pages = <Widget>[
    CategoriasScreen(),
    PedidosScreen(),
    PerfilScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateManager>(
        builder: (context, appStateManager, child) {
        return Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            style: Theme
                .of(context)
                .textTheme
                .headline6,
          ),
          actions: [
            //profileButton(),
          ],
        ),
        body: IndexedStack(index: widget.currentTab, children: pages),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme
              .of(context)
              .textSelectionTheme
              .selectionColor,
          currentIndex: widget.currentTab,
          onTap: (index) {
            Provider.of<AppStateManager>(context, listen: false)
                .goToTab(index);
          },
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              label: 'Pedidos',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Perfil',
            ),
          ],
        ),
      );
   },);
  }
}