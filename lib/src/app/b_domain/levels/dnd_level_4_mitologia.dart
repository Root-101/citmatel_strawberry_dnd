import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';

class DnDLevelMitologia {
  static final DnDLevelDomain levelMitologia = DnDLevelDomain(
    id: 4,
    theme: ToolsThemesAssets.THEME_MITOLOGIA_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_MITOLOGIA_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        lives: 5,
        urlImage: DnDLevelsAssets.MITOLOGIA_L1_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.MITOLOGIA_L1_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: "Faraón, reyes en el Antiguo Egipto.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.MITOLOGIA_L1_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint: "Ares dios griego de la guerra.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.MITOLOGIA_L1_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
            hint: "Hades dios griego del inframundo.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.MITOLOGIA_L1_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
            hint: "Zeus dios griego del cielo.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 2,
        lives: 5,
        urlImage: DnDLevelsAssets.MITOLOGIA_L2_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.MITOLOGIA_L2_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint:
                "Deméter diosa griega de la tierra, la agricultura y los cereales.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.MITOLOGIA_L2_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint: "Fauno divinidad romana de los campos y selvas.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.MITOLOGIA_L2_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
            hint: "Poseidón​ dios griego de los mares y los terremotos.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.MITOLOGIA_L2_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
            hint: "Hefesto dios griego de la forja y del fuego.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 3,
        lives: 5,
        urlImage: DnDLevelsAssets.MITOLOGIA_L3_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.MITOLOGIA_L3_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint:
                "Fénix ave de larga vida que se regenera de las cenizas de su predecesor.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.MITOLOGIA_L3_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint:
                "Artemisa es la diosa helena de la caza y los animales salvajes.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.MITOLOGIA_L3_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
            hint: "Dragón, guardianes del orden.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.MITOLOGIA_L3_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
            hint: "Anubis el guardián de las tumbas.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 4,
        lives: 5,
        urlImage: DnDLevelsAssets.MITOLOGIA_L4_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.MITOLOGIA_L4_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: "Dioses del Inframundo: Hades y Perséfone.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.MITOLOGIA_L4_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint: "Dioses de la Guerra: Ares y Atenea.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.MITOLOGIA_L4_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
            hint: "Hijos de titanes: Zeus, Poseidón y Deméter.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.MITOLOGIA_L4_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
            hint: "Hijos de Zeus: Artemisa, Hefesto y Hebe.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 5,
        lives: 5,
        urlImage: DnDLevelsAssets.MITOLOGIA_L5_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.MITOLOGIA_L5_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.MITOLOGIA_L5_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.MITOLOGIA_L5_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.MITOLOGIA_L5_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 6,
        lives: 5,
        urlImage: DnDLevelsAssets.MITOLOGIA_L6_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.MITOLOGIA_L6_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.MITOLOGIA_L6_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.MITOLOGIA_L6_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.MITOLOGIA_L6_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
          ),
        ],
      ),
    ],
  );
}
