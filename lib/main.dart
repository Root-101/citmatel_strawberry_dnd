import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(SplashScreen());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DnD Tutorial',
      //--------------------- <THEAMING> -----------------------------------
      darkTheme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.deepOrange,
      ),
      //--------------------- </THEAMING> -----------------------------------
      //--------------------- <PAGINATION> -----------------------------------
      initialRoute: DnDLevelsScreen.ROUTE_NAME,
      getPages: [
        GetPage(
          name: DnDLevelsScreen.ROUTE_NAME,
          page: () =>
              //entrada directo al nivel 1
              /*DnDSubLevelScreen(
                  subLevelDomain: DnDLevel1.level1.sublevel[0]),*/
              //entrada a el grid de seleccion de niveles
              DnDLevelsScreen(
            mute: false,
          ),
          transition: Transition.rightToLeft,
        ),
      ],
      /*unknownRoute: GetPage(
          name: UnknownRouteScreen.ROUTE_NAME,
          page: () => UnknownRouteScreen()),*/
      //--------------------- </PAGINATION> -----------------------------------
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return MyApp();
        }
      },
    );
  }
}

class Init {
  Init._();

  static final instance = Init._();

  Future initialize() async {
    await KeyValueCoreModule.init();
    await DnDUIModule.init();
  }
}
