import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  DnDUIModule.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'HanMan Tutorial',
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
          DnDLevelsScreen(),
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
