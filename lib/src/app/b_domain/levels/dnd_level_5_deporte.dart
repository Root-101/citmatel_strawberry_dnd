import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';

class DnDLevelDeporte {
  static final DnDLevelDomain levelDeporte = DnDLevelDomain(
    id: 5,
    theme: ToolsThemesAssets.THEME_DEPORTE_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_DEPORTE_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        lives: 5,
        urlImage: DnDLevelsAssets.DEPORTE_L1_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.DEPORTE_L1_ITEM_1,
            rowPosition: 1,
            columnPosition: 2,
            hint:
                "La medalla de bronce se obtiene al terminar en tercer lugar.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.DEPORTE_L1_ITEM_2,
            rowPosition: 1,
            columnPosition: 0,
            hint:
                "La medalla de plata se obtiene al terminar en segundo lugar.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.DEPORTE_L1_ITEM_3,
            rowPosition: 0,
            columnPosition: 1,
            hint: "La medalla de oro se obtiene al terminar en primer lugar.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 2,
        lives: 5,
        urlImage: DnDLevelsAssets.DEPORTE_L2_BG,
        rows: 4,
        columns: 4,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: "Uruguay perdió en esta ronda.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_2,
            rowPosition: 0,
            columnPosition: 3,
            hint: "Francia venció y avanzó a la siguiente ronda.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
            hint: "Brasil perdió en esta ronda.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_4,
            rowPosition: 1,
            columnPosition: 3,
            hint: "Bélgica venció y avanzó a la siguiente ronda.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_5,
            rowPosition: 2,
            columnPosition: 0,
            hint: "Rusia perdió en esta ronda.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_6,
            rowPosition: 2,
            columnPosition: 3,
            hint: "Croacia venció y avanzó a la siguiente ronda.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 7,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_7,
            rowPosition: 3,
            columnPosition: 0,
            hint: "Suecia perdió en esta ronda.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 8,
            urlImage: DnDLevelsAssets.DEPORTE_L2_ITEM_8,
            rowPosition: 3,
            columnPosition: 3,
            hint: "Inglaterra venció y avanzó a la siguiente ronda.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 3,
        lives: 5,
        urlImage: DnDLevelsAssets.DEPORTE_L3_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.DEPORTE_L3_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: "Los Cazadores de Artemisa.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.DEPORTE_L3_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint: "Los Leopardos de Villa Clara.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.DEPORTE_L3_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
            hint: "Los Tigres de Ciego de Ávila.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.DEPORTE_L3_ITEM_4,
            rowPosition: 2,
            columnPosition: 0,
            hint: "Los Piratas de La Isla.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.DEPORTE_L3_ITEM_5,
            rowPosition: 2,
            columnPosition: 1,
            hint: "Los Gallos de Sancti Spíritus.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.DEPORTE_L3_ITEM_6,
            rowPosition: 2,
            columnPosition: 2,
            hint: "Los Indios de Guantánamo.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 4,
        lives: 5,
        urlImage: DnDLevelsAssets.DEPORTE_L4_BG,
        rows: 3,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.DEPORTE_L4_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint:
                "Para el tenis utiliza una pelota de caucho cubierta con fieltro.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.DEPORTE_L4_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint:
                "Para el tenis de mesa se utiliza una pequeña pelota y una raqueta de madera.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.DEPORTE_L4_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
            hint:
                "Los boxeadores usan guantes para reducir el riesgo a lesionarse.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.DEPORTE_L4_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
            hint:
                "En el básquet se usa una pelota que tiene que ser colada por un aro para anotar puntos.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.DEPORTE_L4_ITEM_5,
            rowPosition: 2,
            columnPosition: 0,
            hint:
                "El polo acuático utiliza una pelota muy similar a la de voleibol.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.DEPORTE_L4_ITEM_6,
            rowPosition: 2,
            columnPosition: 1,
            hint:
                "El beisbol utiliza una pelota casi maciza, con núcleo de goma, relleno de hilo y exterior de cuero para la textura.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 5,
        lives: 5,
        urlImage: DnDLevelsAssets.DEPORTE_L5_BG,
        rows: 3,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.DEPORTE_L5_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint:
                "El voleibol utiliza una pelota inflable que se lanzan de un lado a otro de la net, y al tocar el suelo: !!!PUNTO!!!",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.DEPORTE_L5_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint:
                "El balón de futbol es el más vendido en el mundo del deporte.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.DEPORTE_L5_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
            hint:
                "Los 4 estilos básicos de natación son: brazada, crol, espalda y mariposa.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.DEPORTE_L5_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
            hint:
                "Para el hockey sobre hielo se necesita de un disco y un palo de hockey por jugador.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.DEPORTE_L5_ITEM_5,
            rowPosition: 2,
            columnPosition: 0,
            hint:
                "El balón de futbol rugby tiene forma de óvalo, cuatro paneles y pesa sobre los 400 gramos.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.DEPORTE_L5_ITEM_6,
            rowPosition: 2,
            columnPosition: 1,
            hint:
                "La carrera con obstáculos es de las más antiguas modalidades del atletismo.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 6,
        lives: 5,
        urlImage: DnDLevelsAssets.DEPORTE_L6_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.DEPORTE_L6_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint:
                "Si la pelota de beisbol es bateada fuera del estadio se considera un Home Run y anotan carrera todos los jugadores en base.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.DEPORTE_L6_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint:
                "El disco de hockey está fabricado de caucho vulcanizado y tiene un grosor de 2,54 cm.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.DEPORTE_L6_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
            hint:
                "La pelota de tenis puede alcanzar velocidades de más de 200Km/h.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.DEPORTE_L6_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
            hint:
                "El Volante de bádminton está formado por dieciséis plumas insertadas alrededor de una base de corcho semiesférica cubierto de una capa delgada de cuero. ",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 7,
        lives: 5,
        urlImage: DnDLevelsAssets.DEPORTE_L7_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.DEPORTE_L7_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: "Los Vegueros de Pinar del Río",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.DEPORTE_L7_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint: "Los Industriales de La Habana.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.DEPORTE_L7_ITEM_3,
            rowPosition: 0,
            columnPosition: 2,
            hint: "Los Cachorros de Holguín",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.DEPORTE_L7_ITEM_4,
            rowPosition: 2,
            columnPosition: 0,
            hint: "Los Cocodrilos de Matanza",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.DEPORTE_L7_ITEM_5,
            rowPosition: 2,
            columnPosition: 1,
            hint: "Los Toros de Camagüey",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.DEPORTE_L7_ITEM_6,
            rowPosition: 2,
            columnPosition: 2,
            hint: "Los Avispas de Santiago de Cuba",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 8,
        lives: 5,
        urlImage: DnDLevelsAssets.DEPORTE_L8_BG,
        rows: 4,
        columns: 4,
        items: [
          DnDSubLevelItemDomain(
            id: 1,
            urlImage: DnDLevelsAssets.DEPORTE_L8_ITEM_1,
            hint: "Francia venció y pasó a la gran final del torneo.",
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 0,
              ),
              DnDPositionDomain(
                id: 2,
                row: 3,
                column: 0,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 2,
            urlImage: DnDLevelsAssets.DEPORTE_L8_ITEM_2,
            hint: "Bélgica perdió y fue a por el tercer lugar.",
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 2,
                column: 0,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 3,
            urlImage: DnDLevelsAssets.DEPORTE_L8_ITEM_3,
            hint: "Croacia venció y pasó a la gran final del torneo.",
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 0,
              ),
              DnDPositionDomain(
                id: 2,
                row: 3,
                column: 3,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 4,
            urlImage: DnDLevelsAssets.DEPORTE_L8_ITEM_4,
            hint: "Inglaterra perdió y fue a por el tercer lugar.",
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 2,
                column: 3,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 5,
            urlImage: DnDLevelsAssets.DEPORTE_L8_ITEM_5,
            hint:
                "Bélgica venció y quedó como tercer lugar del torneo, igualando su mejor actuación histórica.",
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 2,
                column: 0,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 6,
            urlImage: DnDLevelsAssets.DEPORTE_L8_ITEM_6,
            hint:
                "Inglaterra perdió, pero se fue con la mejor actuación de los últimos años.",
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 3,
              ),
              DnDPositionDomain(
                id: 2,
                row: 2,
                column: 3,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 7,
            urlImage: DnDLevelsAssets.DEPORTE_L8_ITEM_7,
            hint:
                "Francia venció en la gran final y se quedó con el título de campeón del mundo.",
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 0,
                column: 0,
              ),
              DnDPositionDomain(
                id: 2,
                row: 3,
                column: 0,
              ),
            ],
          ),
          DnDSubLevelItemDomain(
            id: 8,
            urlImage: DnDLevelsAssets.DEPORTE_L8_ITEM_8,
            hint:
                "Croacia perdió la final y se quedó como subcampeón, aun así, fue la mejor actuación en su historia.",
            possiblesPositions: [
              DnDPositionDomain(
                id: 1,
                row: 1,
                column: 0,
              ),
              DnDPositionDomain(
                id: 2,
                row: 3,
                column: 3,
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
