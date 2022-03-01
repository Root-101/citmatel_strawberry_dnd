import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';

class DnDLevelGeneral {
  static final DnDLevelDomain levelGeneral = DnDLevelDomain(
    id: 1,
    theme: ToolsThemesAssets.THEME_GENERAL_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_GENERAL_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        lives: 5,
        urlImage: DnDLevelsAssets.GENERAL_L1_BG,
        rows: 4,
        columns: 6,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GENERAL_L1_ITEM_1,
            rowPosition: 3,
            columnPosition: 1,
            hint: "1ra etapa del proceso de germinación.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GENERAL_L1_ITEM_2,
            rowPosition: 3,
            columnPosition: 2,
            hint: "Fase de hidratación o de imbibición.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GENERAL_L1_ITEM_3,
            rowPosition: 3,
            columnPosition: 3,
            hint: "Fase de germinación.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GENERAL_L1_ITEM_4,
            rowPosition: 3,
            columnPosition: 4,
            hint: "Fase de crecimiento.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 2,
        lives: 5,
        urlImage: DnDLevelsAssets.GENERAL_L2_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GENERAL_L2_ITEM_1,
            rowPosition: 1,
            columnPosition: 1,
            hint: "Evolución de los coches:\nAuto moderno.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GENERAL_L2_ITEM_2,
            rowPosition: 1,
            columnPosition: 0,
            hint: "Evolución de los coches:\nAuto.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GENERAL_L2_ITEM_3,
            rowPosition: 0,
            columnPosition: 1,
            hint: "Evolución de los coches:\nCoche antiguo.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GENERAL_L2_ITEM_4,
            rowPosition: 0,
            columnPosition: 0,
            hint: "Evolución de los coches:\nCarruaje.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 3,
        lives: 5,
        urlImage: DnDLevelsAssets.GENERAL_L3_BG,
        rows: 2,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
              id: 1,
              urlImage: DnDLevelsAssets.GENERAL_L3_ITEM_1,
              rowPosition: 0,
              columnPosition: 0,
              hint:
                  "La principal función del aparato digestivo es obtener de los alimentos y líquidos los nutrientes y energía que el organismo requiere."),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GENERAL_L3_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint:
                "Elabora y libera hormonas en la sangre que controlan funciones como: el crecimiento, el desarrollo, el metabolismo y la reproducción.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GENERAL_L3_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
            hint:
                "Permite la entrada de oxígeno en nuestros cuerpos (inhalación) y expulsa el dióxido de carbono (exhalación).",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GENERAL_L3_ITEM_4,
            rowPosition: 1,
            columnPosition: 0,
            hint:
                "El aparato urinario es un conjunto de órganos encargados de la producción, almacenamiento y expulsión de la orina",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GENERAL_L3_ITEM_5,
            rowPosition: 1,
            columnPosition: 1,
            hint:
                "Conjunto de más de 650 músculos, cuya función principal es generar movimiento, ya sea voluntario o involuntario ",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GENERAL_L3_ITEM_6,
            rowPosition: 1,
            columnPosition: 2,
            hint:
                "Una parte principal del sistema inmunitario del cuerpo. Transporta linfa desde los tejidos hasta el torrente sanguíneo.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 4,
        lives: 5,
        urlImage: DnDLevelsAssets.GENERAL_L4_BG,
        rows: 2,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GENERAL_L4_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint:
                "El tronco encefálico recibe, envía y coordina los mensajes cerebrales. Controla funciones como: la respiración, el tragar, la digestión, el parpadeo, etc.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GENERAL_L4_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint:
                "Sistema corporal que rodea todo el cuerpo. En términos generales, el sistema tegumentario está compuesto por la piel y sus apéndices.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GENERAL_L4_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
            hint:
                "Sistema que mueve la sangre por todo el cuerpo y ayuda a que los tejidos reciban suficiente oxígeno y nutrientes",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GENERAL_L4_ITEM_4,
            rowPosition: 1,
            columnPosition: 0,
            hint:
                "Proporciona soporte, apoyo y protección a los tejidos blandos y músculos en los organismos vivos.​",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.GENERAL_L4_ITEM_5,
            rowPosition: 1,
            columnPosition: 1,
            hint:
                "Encargado de garantizar la reproducción en las personas de sexo masculino, mediante la fabricación de semen.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.GENERAL_L4_ITEM_6,
            rowPosition: 1,
            columnPosition: 2,
            hint:
                "Produce óvulos para la fertilización por el espermatozoide y proporciona condiciones apropiadas para la implantación del embrión.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 5,
        lives: 5,
        urlImage: DnDLevelsAssets.GENERAL_L5_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.GENERAL_L5_ITEM_1,
            rowPosition: 0,
            columnPosition: 1,
            hint: "Etapa 1 del desarrollo embrionario: Cigoto.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.GENERAL_L5_ITEM_2,
            rowPosition: 0,
            columnPosition: 2,
            hint: "Etapa 2 del desarrollo embrionario: Embrión.",
          ),
          DnDSubLevelItemDomain.singlePosition(
              id: 3,
              urlImage: DnDLevelsAssets.GENERAL_L5_ITEM_3,
              rowPosition: 2,
              columnPosition: 2,
              hint:
                  "Etapa 3 y 4 del desarrollo embrionario: Mórula y Blastocisto."),
          DnDSubLevelItemDomain.singlePosition(
              id: 4,
              urlImage: DnDLevelsAssets.GENERAL_L5_ITEM_4,
              rowPosition: 2,
              columnPosition: 1,
              hint: "Etapa final: Feto."),
          DnDSubLevelItemDomain.singlePosition(
              id: 5,
              urlImage: DnDLevelsAssets.GENERAL_L5_ITEM_5,
              rowPosition: 2,
              columnPosition: 0,
              hint: "Nacimiento: Bebé."),
        ],
      ),
      DnDSubLevelDomain(
        id: 6,
        lives: 5,
        urlImage: DnDLevelsAssets.GENERAL_L6_BG,
        rows: 4,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
              id: 1,
              urlImage: DnDLevelsAssets.GENERAL_L6_ITEM_1,
              rowPosition: 1,
              columnPosition: 0,
              hint: "Células Nerviosas o Neuronas."),
          DnDSubLevelItemDomain.singlePosition(
              id: 2,
              urlImage: DnDLevelsAssets.GENERAL_L6_ITEM_2,
              rowPosition: 2,
              columnPosition: 0,
              hint: "Células sanguíneas: Glóbulos rojos y blancos."),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.GENERAL_L6_ITEM_3,
            rowPosition: 3,
            columnPosition: 0,
            hint: "Hepatocitos y células de Kupffer.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.GENERAL_L6_ITEM_4,
            rowPosition: 1,
            columnPosition: 2,
            hint: "Células epiteliales.",
          ),
          DnDSubLevelItemDomain.singlePosition(
              id: 5,
              urlImage: DnDLevelsAssets.GENERAL_L6_ITEM_5,
              rowPosition: 3,
              columnPosition: 2,
              hint: "Células contráctiles o miocitos."),
        ],
      ),
    ],
  );
}
