import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';
import 'package:flutter/material.dart';

class DnDSubLevelLoading extends StatelessWidget {
  final DnDSubLevelDomain subLevelDomain;
  final DnDSubLevelProgressDomain subLevelProgressDomain;

  DnDSubLevelLoading({
    required this.subLevelDomain,
    required this.subLevelProgressDomain,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlainSubLevelLoading(
      backgroundURL: DnDAssets.WALLPAPER,
      loading: _loadingWidget(),
      subLevel: DnDSubLevelScreen(
        subLevelDomain: subLevelDomain,
        subLevelProgressDomain: subLevelProgressDomain,
      ),
    );
  }

  _loadingWidget() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Cargando nivel"),
          StrawberryLoadingSpinkit.randomLoadingSpinkit(),
          //a random loading every time
        ],
      ),
    );
  }
}
