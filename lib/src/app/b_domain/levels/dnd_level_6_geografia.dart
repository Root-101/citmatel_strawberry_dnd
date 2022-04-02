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
                "El monumento José Martí tiene casi 142 metros de altura y 78,50 metros de diámetro.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L1_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
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
            hint:
                "La figura del mayor general Antonio Maceo tiene 16 m de altura.",
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
            hint:
                "La Torre de Pisa es la torre campanario de la catedral de Pisa, en Toscana.",
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L2_ITEM_2,
            hint:
                "El Arco de Triunfo fue construido para conmemorar la victoria en la batalla de Austerlitz.",
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
            hint:
                "El Puente de la Torre es un puente basculante y colgante de Londres que cruza el río Támesis.",
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
            hint:
                "El Castillo de Neuschwanstein es un palacio neorrománico del siglo XIX.",
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
            hint:
                "La corrida de toros es seguramente una de las costumbres populares españolas más conocidas.",
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
            hint: "Nicaragua.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_2,
            rowPosition: 2,
            columnPosition: 0,
            hint: "Perú.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_3,
            rowPosition: 3,
            columnPosition: 0,
            hint: "Chile.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_4,
            rowPosition: 1,
            columnPosition: 2,
            hint: "Guana.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_5,
            rowPosition: 2,
            columnPosition: 2,
            hint: "Brasil.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L3_ITEM_6,
            rowPosition: 3,
            columnPosition: 2,
            hint: "Uruguay.",
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
            hint: "Guatemala.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_2,
            rowPosition: 2,
            columnPosition: 0,
            hint: "Panamá.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_3,
            rowPosition: 3,
            columnPosition: 0,
            hint: "Bolivia.",
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
            hint: "Venezuela.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L4_ITEM_6,
            rowPosition: 3,
            columnPosition: 2,
            hint: "Argentina.",
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
            hint: "Marruecos.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L5_ITEM_2,
            rowPosition: 2,
            columnPosition: 0,
            hint: "Mauritania.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L5_ITEM_3,
            rowPosition: 3,
            columnPosition: 0,
            hint: "Nigeria.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L5_ITEM_4,
            rowPosition: 1,
            columnPosition: 2,
            hint: "Somalia.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L5_ITEM_5,
            rowPosition: 2,
            columnPosition: 2,
            hint: "Tanzania.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L5_ITEM_6,
            rowPosition: 3,
            columnPosition: 2,
            hint: "Mozambique.",
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
            hint: "Argelia.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L6_ITEM_2,
            rowPosition: 2,
            columnPosition: 0,
            hint: "Malí.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L6_ITEM_3,
            rowPosition: 3,
            columnPosition: 0,
            hint: "Angola.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L6_ITEM_4,
            rowPosition: 1,
            columnPosition: 2,
            hint: "Sudán.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L6_ITEM_5,
            rowPosition: 2,
            columnPosition: 2,
            hint: "Kenia.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L6_ITEM_6,
            rowPosition: 3,
            columnPosition: 2,
            hint: "Madagascar.",
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
            hint:
                "El Coliseo de Roma fue inaugurado por e; emperador Tito en el año 80.",
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L7_ITEM_2,
            hint:
                "La Torre Eiffel fue concebida en 1884, edificada entre 1887 y 1889 e inaugurada en 1889 en París,",
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
            hint:
                "El Big Ben es el reloj de cuatro caras más grande del mundo.",
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
            hint:
                "El edificio del Reichstag terminó de construirse en 1894 siguiendo un estilo neorrenacentista.",
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
            hint:
                "La Catedral de Santiago de Compostela es de las más grandes de España.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 8,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L8_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L8_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: "La Palma es una localidad de Pinar del Río.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L8_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint:
                "La Coca es una localidad hubicada entre La Habana y Mayabeque.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L8_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
            hint: "Río Salado es una localidad de Las Tunas.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L8_ITEM_4,
            rowPosition: 2,
            columnPosition: 0,
            hint:
                "Lajas es una localidad hubicada entre Cienfuegos y Sancti Spíritus.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L8_ITEM_5,
            rowPosition: 2,
            columnPosition: 1,
            hint: "Tubaquey se encuentra en Camagüey.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L8_ITEM_6,
            rowPosition: 2,
            columnPosition: 2,
            hint: "Turquino pertenece a la provincia Santiago de Cuba.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 9,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L9_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L9_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: "Herradura es un pueblo costero de Artemisa.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L9_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint: "Placetas se encuenta en la provincia Villa Clara.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L9_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
            hint: "Esmeralda es un pueblo de Camagüey.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L9_ITEM_4,
            rowPosition: 2,
            columnPosition: 0,
            hint: "Viñales es un polo turístico de Pinar del Río.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L9_ITEM_5,
            rowPosition: 2,
            columnPosition: 1,
            hint: "Por Playas Las Coloradas desembarcó el yate Granma.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L9_ITEM_6,
            rowPosition: 2,
            columnPosition: 2,
            hint: "Limonar es un pueblo de Guantánamo.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 10,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L10_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L10_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: "Matahambre pertenece a Pinar del Río.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L10_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint: "Yaguajay pertenece a Sancti Spíritus.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L10_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
            hint: "Moa es un municipio de Holguín.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L10_ITEM_4,
            rowPosition: 2,
            columnPosition: 0,
            hint: "La Ciénaga de zapata pertenece a Matanzas.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L10_ITEM_5,
            rowPosition: 2,
            columnPosition: 1,
            hint: "Baraguá es un municipio de Ciego de Ávila.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L10_ITEM_6,
            rowPosition: 2,
            columnPosition: 2,
            hint: "Maisí es el municipio mas oriental de Cuba, en Guantánamo.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 11,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L11_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L11_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: "Cayo Fragoso se encuentra al norte de Villa Clara.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L11_ITEM_2,
            rowPosition: 0,
            columnPosition: 2,
            hint: "Cayo Guillermo se encuentra al norte de Camagüey.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L11_ITEM_3,
            rowPosition: 2,
            columnPosition: 0,
            hint: "Cayo Largo se encuentra al sur de Matanzas.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L11_ITEM_4,
            rowPosition: 2,
            columnPosition: 2,
            hint:
                "Los Cayos: Jardines del Rey se encuentran al sur de la gran parte del centro de la Isla.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 12,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L12_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L12_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint:
                "La Cueva La Barca se encuentra en la Península de Guanahacabibes, Pinar del Río.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L12_ITEM_2,
            rowPosition: 0,
            columnPosition: 2,
            hint:
                "La Cueva del Indio se encuentra en la Sierra de Cubitas, Camagüey.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L12_ITEM_3,
            rowPosition: 2,
            columnPosition: 0,
            hint:
                "La Cueva del Agua se encuentra en la Sierra de Casas, Isla de la Juventud.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L12_ITEM_4,
            rowPosition: 2,
            columnPosition: 2,
            hint: "La Cueva Cativar se encuentra en Guamá, Santiago de Cuba.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 13,
        urlImage: DnDLevelsAssets.GEOGRAFIA_L13_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L13_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint:
                "El río Almendares tiene 45 Km de longitud y desemboca en el Estrecho de la Florida.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L13_ITEM_2,
            rowPosition: 0,
            columnPosition: 2,
            hint:
                "El Río Sagua la Grande tiene una longitud de 163 Km, está ubicado en Villa Clara.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L13_ITEM_3,
            rowPosition: 2,
            columnPosition: 0,
            hint: "El Río Yayabo pertenece a la Provincia de Sancti Spíritus.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GEOGRAFIA_L13_ITEM_4,
            rowPosition: 2,
            columnPosition: 2,
            hint:
                "El Río Cauto desemboca al Mar cariba, cuenta con 343 Km de lngitud..",
          ),
        ],
      ),
    ],
  );
}
