import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/assets/assets_exporter.dart';

class DnDLevelGeografia {
  static final DnDLevelDomain levelGeografia = DnDLevelDomain(
    id: 6,
    theme: ToolsThemesAssets.THEME_GEOGRAFIA_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_GEOGRAFIA_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L1_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: "Pinar del Río, casa del mejor tabaco del mundo.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint:
            "El monumeto José Martí tiene casi 142 metros de altura y 78,50 metros de diámetro.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
            hint:
            hint: "Holguín es conocida como la ciudad de los parques.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_4,
            rowPosition: 2,
            columnPosition: 0,
            hint: "Matanzas es conocida como la ciudad de los puentes.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_5,
            rowPosition: 2,
            columnPosition: 1,
            hint: "Camagüey es conocida como la ciudad de los tinajones.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_6,
            rowPosition: 2,
            columnPosition: 2,
            hint: "La figura del mayor general Antonio Maceo tiene 16 m de altura y una colección de 23 \'machetes\' como símbolo del espíritu independiente de Cuba.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 2,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L2_BG,
        rows: 6,
        columns: 6,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_1,
            rowPosition: 4,
            columnPosition: 4,
            hint: "La Torre de Pisa es la torre campanario de la catedral de Pisa, situada en la plaza del Duomo de Pisa en Tuscana.",
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_2,
            hint: "El Arco de Triunfo fue construido entre 1806 y 1836 por orden de Napoleón Bonaparte para conmemorar la victoria en la batalla de Austerlitz.",
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 2,
                column: 2,
              ),
              DnDPositionDomain(
                id: 2,
                row: 3,
                column: 2,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_3,
            hint: "El Puente de la Torre es un puente basculante y colgante de Londres que cruza el río Támesis.",
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 1,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 1,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_4,
            hint: "El Castillo de Neuschwanstein es un impresionante palacio neorrománico del siglo XIX, es considerado uno de los castillos más bonitos de alemania.",
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 2,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 3,
              ),
            ],
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_5,
            rowPosition: 4,
            columnPosition: 1,
            hint: "La corrida de toros es seguramente una de las costumbres populares españolas más conocidas aunque al mismo tiempo más controvertidas.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 3,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L3_BG,
        rows: 4,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_1,
            rowPosition: 1,
            columnPosition: 0,
            hint: "Nicaragua",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_2,
            rowPosition: 2,
            columnPosition: 0,
            hint: "Perú",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_3,
            rowPosition: 3,
            columnPosition: 0,
            hint: "Chile",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_4,
            rowPosition: 1,
            columnPosition: 2,
            hint: "Guana",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_5,
            rowPosition: 2,
            columnPosition: 2,
            hint: "Brasil",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_6,
            rowPosition: 3,
            columnPosition: 2,
            hint: "Uruguay",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 4,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L4_BG,
        rows: 4,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_1,
            rowPosition: 1,
            columnPosition: 0,
            hint: "Guatemala",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_2,
            rowPosition: 2,
            columnPosition: 0,
            hint: "Panamá",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_3,
            rowPosition: 3,
            columnPosition: 0,
            hint: "Bolívia",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_4,
            rowPosition: 1,
            columnPosition: 2,
            hint: "Cuba.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_5,
            rowPosition: 2,
            columnPosition: 2,
            hint: "Venezuela",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_6,
            rowPosition: 3,
            columnPosition: 2,
            hint: "Argentina",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 5,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L5_BG,
        rows: 4,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L5_ITEM_1,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L5_ITEM_2,
            rowPosition: 2,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L5_ITEM_3,
            rowPosition: 3,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L5_ITEM_4,
            rowPosition: 1,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L5_ITEM_5,
            rowPosition: 2,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L5_ITEM_6,
            rowPosition: 3,
            columnPosition: 2,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 6,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L6_BG,
        rows: 4,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L6_ITEM_1,
            rowPosition: 1,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L6_ITEM_2,
            rowPosition: 2,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L6_ITEM_3,
            rowPosition: 3,
            columnPosition: 0,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L6_ITEM_4,
            rowPosition: 1,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L6_ITEM_5,
            rowPosition: 2,
            columnPosition: 2,
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L6_ITEM_6,
            rowPosition: 3,
            columnPosition: 2,
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 7,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L7_BG,
        rows: 6,
        columns: 6,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L7_ITEM_1,
            rowPosition: 4,
            columnPosition: 4,
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L7_ITEM_2,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 2,
                column: 2,
              ),
              DnDPositionDomain(
                id: 2,
                row: 3,
                column: 2,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L7_ITEM_3,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 1,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 1,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L7_ITEM_4,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 2,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 3,
              ),
            ],
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L7_ITEM_5,
            rowPosition: 4,
            columnPosition: 1,
          ),
        ],
      ),
    ],
  );
}
