import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fooderlich_theme.dart';
import 'package:app_ciclo4b_grupo2/model/models.dart';
import 'screens/splash_screen.dart';
import 'navigation/app_router.dart';

void main() {
  runApp(
    const AppMinTic(),
  );
}

class AppMinTic extends StatefulWidget {
  const AppMinTic({Key? key}) : super(key: key);

  @override
  _AppMinTicState createState() => _AppMinTicState();
}

class _AppMinTicState extends State<AppMinTic> {
  //final _carritoManager = CarritoManager();
  final _profileManager = PerfilManager();
  final _appStateManager = AppStateManager();

  late AppRouter _appRouter;


  @override
  void initState() {
    _appRouter = AppRouter(
      appStateManager: _appStateManager,
      profileManager: _profileManager,
    );
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        /*ChangeNotifierProvider(
          create: (context) => _carritoManager,
        ),*/
        ChangeNotifierProvider(
          create: (context) => _profileManager,
        ),
        ChangeNotifierProvider(create: (context) => _appStateManager,),
      ],
      child: Consumer<PerfilManager>(
        builder: (context, profileManager, child) {
          ThemeData theme;
          if (profileManager.darkMode) {
            theme = FooderlichTheme.dark();
          } else {
            theme = FooderlichTheme.light();
          }

          return MaterialApp(
            theme: theme,
            title: 'Fooderlich',
            home: Router(
              routerDelegate: _appRouter,
              // TODO: Add backButtonDispatcher
            ),
          );
        },
      ),
    );
  }
}