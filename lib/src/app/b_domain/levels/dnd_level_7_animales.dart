import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';

class DnDLevelAnimales {
  static final DnDLevelDomain levelAnimales = DnDLevelDomain(
    id: 7,
    theme: ToolsThemesAssets.THEME_ANIMALES_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_ANIMALES_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        lives: 5,
        urlImage: DnDLevelsAssets.ANIMALES_L1_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.ANIMALES_L1_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: "La rana es un anfibio principalmente de zonas húmedas.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.ANIMALES_L1_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint:
                "El conejo está en la lista 100 de las especies invasoras más dañinas del mundo.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.ANIMALES_L1_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
            hint: "Los peces son animales vertebrados primariamente acuáticos.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.ANIMALES_L1_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
            hint:
                "Las arañas son animales artrópodos con más de 45 mil especies diferentes",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 2,
        lives: 5,
        urlImage: DnDLevelsAssets.ANIMALES_L2_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.ANIMALES_L2_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: "El perro es descendiente directo, pero muy lejano del lobo.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.ANIMALES_L2_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint: "La gallina es el ave más numerosa del planeta.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.ANIMALES_L2_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
            hint:
                "Los pájaros para reproducirse ponen huevos que incuban hasta su eclosión.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.ANIMALES_L2_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
            hint:
                "Los ratones comen todo tipo de restos de comida, desde hierbas hasta carne.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 3,
        lives: 5,
        urlImage: DnDLevelsAssets.ANIMALES_L3_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.ANIMALES_L3_ITEM_1,
            rowPosition: 2,
            columnPosition: 1,
            hint: "El pasto es ingerido por los animales herbívoros.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.ANIMALES_L3_ITEM_2,
            rowPosition: 1,
            columnPosition: 1,
            hint:
                "El buitre es un animal carroñero, se come los restos de otros animales muertos.",
          ),
          DnDSubLevelItemDomain(
            id: 3,
            urlImage: DnDLevelsAssets.ANIMALES_L3_ITEM_3,
            hint:
                "La gacela puede alcanzar velocidades de 97 km/h para evitar ser comidas.",
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 2,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 0,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 4,
            urlImage: DnDLevelsAssets.ANIMALES_L3_ITEM_4,
            hint:
                "La cebra tiene una coloración a base de rayas blancas sobre un fondo negro.",
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 2,
              ),
              DnDPositionDomain(
                id: 2,
                row: 1,
                column: 0,
              ),
            ],
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.ANIMALES_L3_ITEM_5,
            rowPosition: 0,
            columnPosition: 1,
            hint:
                "El león es un mamífero carnívoro de la familia de los felinos.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 4,
        lives: 5,
        urlImage: DnDLevelsAssets.ANIMALES_L4_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.ANIMALES_L4_ITEM_1,
            rowPosition: 0,
            columnPosition: 1,
            hint: "El oso polar blanco es el único superdepredador del Ártico.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.ANIMALES_L4_ITEM_2,
            rowPosition: 1,
            columnPosition: 2,
            hint:
                "Las extremidades posteriores de la foca no son funcionales en el desplazamiento terrestre.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.ANIMALES_L4_ITEM_3,
            rowPosition: 2,
            columnPosition: 2,
            hint:
                "El bacalao ártico es de los pocos animales que sobrevive en aguas por debajo de 0 grados Celsius.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.ANIMALES_L4_ITEM_4,
            rowPosition: 2,
            columnPosition: 1,
            hint:
                "Los copépodos son una subclase de crustáceos maxilópodos de pequeño tamaño.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.ANIMALES_L4_ITEM_5,
            rowPosition: 2,
            columnPosition: 0,
            hint:
                "El Plancton es pilar en la cadena alimenticia de pequeños peces.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.ANIMALES_L4_ITEM_6,
            rowPosition: 1,
            columnPosition: 0,
            hint:
                "Las algas son el eslabón más bajo de la cadena alimenticia del ártico.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 5,
        lives: 5,
        urlImage: DnDLevelsAssets.ANIMALES_L5_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.ANIMALES_L5_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint:
                "El sol da la energía necesaria para que las plantas realicen la fotosíntesis.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.ANIMALES_L5_ITEM_2,
            rowPosition: 2,
            columnPosition: 0,
            hint:
                "Las plantas se alimentan de la luz solar y los recursos naturales de la tierra.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.ANIMALES_L5_ITEM_3,
            rowPosition: 2,
            columnPosition: 1,
            hint:
                "Los saltamontes son insectos herbívoros, algunas plagas para la agricultura.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.ANIMALES_L5_ITEM_4,
            rowPosition: 2,
            columnPosition: 2,
            hint: "La rana se alimenta de pequeños animales y así sobrevive.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.ANIMALES_L5_ITEM_5,
            rowPosition: 1,
            columnPosition: 2,
            hint:
                "La serpiente mata a su presa con veneno o constricción (apretándolas).",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.ANIMALES_L5_ITEM_6,
            rowPosition: 0,
            columnPosition: 2,
            hint:
                "El águila es un ave de presa que acecha a su víctima desde las alturas.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 7,
            urlImage: DnDLevelsAssets.ANIMALES_L5_ITEM_7,
            rowPosition: 0,
            columnPosition: 1,
            hint: "Los gusanos se comen los restos de los animales muertos.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 6,
        lives: 5,
        urlImage: DnDLevelsAssets.ANIMALES_L6_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.ANIMALES_L6_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint:
                "Las mofetas son omnívoras, y comen insectos, huevos, frutas entre otros.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.ANIMALES_L6_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint:
                "Los castores se alimentan de la corteza, ramillas y hojas de los árboles que talan.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.ANIMALES_L6_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
            hint: "La gacela es una de las principales presas para la pantera.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.ANIMALES_L6_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
            hint: "Los peces son el alimento preferido de las focas.",
          ),
        ],
      ),
    ],
  );
}
