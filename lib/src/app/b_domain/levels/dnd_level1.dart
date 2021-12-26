import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';

class DnDLevel1 {
  static final DnDLevelDomain level1 = DnDLevelDomain(
    id: 1,
    theme: "Tutorial",
    urlThemePicture: "",
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        urlImage: "assets/icons/brain_in_blue.jpg",
        rows: 5,
        columns: 5,
        items: [
          DnDSubLevelItemDomain(
            id: 1,
            urlImage: "assets/icons/brain_in_blue.jpg",
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: "assets/icons/brain_in_blue.jpg",
            rowPosition: 1,
            columnPosition: 1,
          ),
        ],
      ),
    ],
  );
}
