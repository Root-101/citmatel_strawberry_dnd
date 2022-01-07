import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';

class DnDLevel1 {
  static final DnDLevelDomain level1 = DnDLevelDomain(
    id: 1,
    theme: "Tutorial",
    urlThemePicture: "",
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        urlImage: DnDAssets.LEVEL1TEST,
        rows: 5,
        columns: 5,
        items: [
          DnDSubLevelItemDomain(
            id: 1,
            urlImage: DnDAssets.DEER,
            rowPosition: 2,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: DnDAssets.MONKEY,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain(
            id: 3,
            urlImage: DnDAssets.FROG,
            rowPosition: 3,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain(
            id: 4,
            urlImage: DnDAssets.BIRD,
            rowPosition: 0,
            columnPosition: 4,
          ),
          DnDSubLevelItemDomain(
            id: 5,
            urlImage: DnDAssets.FLOWER,
            rowPosition: 4,
            columnPosition: 3,
          ),
        ],
      ),
    ],
  );
}
