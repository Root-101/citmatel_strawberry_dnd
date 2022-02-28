import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';

class DnDLevelScience {
  static final DnDLevelDomain levelCiencias = DnDLevelDomain(
    id: 2,
    theme: ToolsThemesAssets.THEME_CIENCIAS_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_CIENCIAS_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        urlImage: DnDLevelsAssets.CIENCIA_L1_BG,
        rows: 5,
        columns: 5,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.CIENCIA_L1_ITEM_1,
            rowPosition: 3,
            columnPosition: 1,
            hint: "Primer Planeta del Sistema Solar: Mercurio",
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: DnDLevelsAssets.CIENCIA_L1_ITEM_2,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 2,
                column: 1,
              ),
              DnDPositionDomain(
                id: 2,
                row: 2,
                column: 2,
              ),
              DnDPositionDomain(
                id: 3,
                row: 3,
                column: 2,
              ),
            ],
            hint: "Segundo Planeta del Sistema Solar: Venus",
          ),
          DnDSubLevelItemDomain(
            id: 3,
            urlImage: DnDLevelsAssets.CIENCIA_L1_ITEM_3,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 2,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 3,
              ),
              DnDPositionDomain(
                id: 3,
                row: 2,
                column: 3,
              ),
            ],
            hint: "Tercer Planeta del Sistema Solar: Tierra",
          ),
          DnDSubLevelItemDomain(
            id: 4,
            urlImage: DnDLevelsAssets.CIENCIA_L1_ITEM_4,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 0,
                column: 4,
              ),
              DnDPositionDomain(
                id: 3,
                row: 1,
                column: 4,
              ),
            ],
            hint: "Cuarto Planeta del Sistema Solar: Marte",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 2,
        urlImage: DnDLevelsAssets.CIENCIA_L2_BG,
        rows: 5,
        columns: 5,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.CIENCIA_L2_ITEM_1,
            rowPosition: 3,
            columnPosition: 1,
            hint: "Quinto Planeta del Sistema Solar: Júpiter",
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: DnDLevelsAssets.CIENCIA_L2_ITEM_2,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 2,
                column: 1,
              ),
              DnDPositionDomain(
                id: 2,
                row: 2,
                column: 2,
              ),
              DnDPositionDomain(
                id: 3,
                row: 3,
                column: 2,
              ),
            ],
            hint: "Sexto Planeta del Sistema Solar: Saturno",
          ),
          DnDSubLevelItemDomain(
            id: 3,
            urlImage: DnDLevelsAssets.CIENCIA_L2_ITEM_3,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 2,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 3,
              ),
              DnDPositionDomain(
                id: 3,
                row: 2,
                column: 3,
              ),
            ],
            hint: "Séptimo Planeta del Sistema Solar: Urano",
          ),
          DnDSubLevelItemDomain(
            id: 4,
            urlImage: DnDLevelsAssets.CIENCIA_L2_ITEM_4,
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 0,
                column: 4,
              ),
              DnDPositionDomain(
                id: 3,
                row: 1,
                column: 4,
              ),
            ],
            hint: "Octavo Planeta del Sistema Solar: Neptuno",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 3,
        urlImage: DnDLevelsAssets.CIENCIA_L3_BG,
        rows: 4,
        columns: 4,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.CIENCIA_L3_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: "Charles Darwin aportó \"La Teoría de la Evolución\".",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.CIENCIA_L3_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint: "Nikola Tesla descubrió la \"Corriente Alterna\".",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.CIENCIA_L3_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
            hint:
                "Rosalind Franklin contribuyó a la comprensión de las estructuras del ADN, los virus, el carbón y el grafito.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.CIENCIA_L3_ITEM_4,
            rowPosition: 0,
            columnPosition: 3,
            hint: "Albert Einstein aportó \"La Teoría de la relatividad\".",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 4,
        urlImage: DnDLevelsAssets.CIENCIA_L4_BG,
        rows: 4,
        columns: 4,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.CIENCIA_L4_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: "Pitágoras aportó \"El Teorema de la Hipotenusa.\".",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.CIENCIA_L4_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint: "Galileo Galilei entre otros aportes, inventó el telescopio.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.CIENCIA_L4_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
            hint:
                "Marie Curie descubrió los elementos radiactivos: \"Polonio y Radio\".",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.CIENCIA_L4_ITEM_4,
            rowPosition: 0,
            columnPosition: 3,
            hint:
                "Isaac Newton estableció las bases de la mecánica clásica a través de sus tres leyes del movimiento y su ley de la gravitación universal.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 5,
        lives: 5,
        urlImage: DnDLevelsAssets.CIENCIA_L5_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.CIENCIA_L5_ITEM_1,
            rowPosition: 0,
            columnPosition: 1,
            hint: "Primera etapa: Puesta de Huevos.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.CIENCIA_L5_ITEM_2,
            rowPosition: 1,
            columnPosition: 2,
            hint: "Segunda etapa: Renacuajo.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.CIENCIA_L5_ITEM_3,
            rowPosition: 2,
            columnPosition: 1,
            hint: "Tercera etapa: Renacuajo con patas.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.CIENCIA_L5_ITEM_4,
            rowPosition: 2,
            columnPosition: 1,
            hint: "Cuarta Etapa: Rana Adulta.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 6,
        lives: 5,
        urlImage: DnDLevelsAssets.CIENCIA_L6_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.CIENCIA_L6_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint:
                "Ardipithecus: De los primeros ancestros de los humanos después de los chimpancés.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.CIENCIA_L6_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint: 'Australopithecus: Primeros primates en caminar erguidos.',
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.CIENCIA_L6_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
            hint:
                'Homo habilis: Primer homínido que se coloca en mismo género que los humanos.',
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.CIENCIA_L6_ITEM_4,
            rowPosition: 2,
            columnPosition: 0,
            hint: "Homo erectus: Primera especie en salir de África.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.CIENCIA_L6_ITEM_5,
            rowPosition: 2,
            columnPosition: 1,
            hint:
                "Homo neanderthalensis. El famoso “hombre de Neandertal” que habitó Europa.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.CIENCIA_L6_ITEM_6,
            rowPosition: 2,
            columnPosition: 2,
            hint: "Homo sapiens: Es el ser humano como lo conocemos. NOSOTROS.",
          ),
        ],
      ),
    ],
  );
}
