import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';

class DnDLevelTecnologia {
  static final DnDLevelDomain levelTecnologia = DnDLevelDomain(
    id: 3,
    theme: ToolsThemesAssets.THEME_TECNOLOGIA_NAME,
    themeBackgroundImage: ToolsThemesAssets.THEME_TECNOLOGIA_BACKGROUND,
    sublevel: [
      DnDSubLevelDomain(
        id: 1,
        lives: 5,
        urlImage: DnDLevelsAssets.TECNOLOGIA_L1_BG,
        rows: 3,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L1_ITEM_1,
            rowPosition: 0,
            columnPosition: 1,
            hint:
                "Teléfono creado en 1920. Necesitaba una caja de madera puesta en una pared con todos los componentes necesarios para su funcionamiento.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L1_ITEM_2,
            rowPosition: 0,
            columnPosition: 2,
            hint:
                "Teléfono creado en 1934. Contiene dentro de si todos los elementos necesarios. (¡¡¡adiós caja de madera!!!)",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L1_ITEM_3,
            rowPosition: 1,
            columnPosition: 2,
            hint:
                "Teléfono con pulsadores y digitales 1963-1980. Equipado con pulsadores para discado por tonos.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L1_ITEM_4,
            rowPosition: 2,
            columnPosition: 2,
            hint: "Teléfono inalámbrico y primer celular 1980-1990.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 5,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L1_ITEM_5,
            rowPosition: 2,
            columnPosition: 1,
            hint:
                "Teléfonos inteligentes 2000. Más pequeños, mayor alcance, con cámara, radio, música y aplicaciones.",
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 6,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L1_ITEM_6,
            rowPosition: 2,
            columnPosition: 0,
            hint:
                "2008-2010 Celulares inteligentes, táctiles, conectados a datos, para chat, correo, video, tv y redes sociales en línea.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 2,
        lives: 5,
        urlImage: DnDLevelsAssets.TECNOLOGIA_L2_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L2_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint:
                'Java fue el lenguaje de programación con que se hizo Minecraft.',
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L2_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint: 'Este juego, Áthlos, fue desarrollado con Flutter.',
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L2_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
            hint: 'Las aplicaciones nativas para iOS se desarrollan con Swift.',
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L2_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
            hint:
                'Kotlin es el lenguaje de programación para las nuevas aplicaciones Android.',
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 3,
        lives: 5,
        urlImage: DnDLevelsAssets.TECNOLOGIA_L3_BG,
        rows: 5,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
              id: 1,
              urlImage: DnDLevelsAssets.TECNOLOGIA_L3_ITEM_1,
              rowPosition: 1,
              columnPosition: 0,
              hint: "Unidad Flash o USB\nCapacidad: 8 Mb - 256 Gb"),
          DnDSubLevelItemDomain.singlePosition(
              id: 2,
              urlImage: DnDLevelsAssets.TECNOLOGIA_L3_ITEM_2,
              rowPosition: 2,
              columnPosition: 2,
              hint: "Disco Compacto o CD\nCapacidad: 700 Mb."),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L3_ITEM_3,
            rowPosition: 3,
            columnPosition: 0,
            hint: "Disquete\nCapacidad: 1.2 - 1.4 Mb.",
          ),
          DnDSubLevelItemDomain.singlePosition(
              id: 4,
              urlImage: DnDLevelsAssets.TECNOLOGIA_L3_ITEM_4,
              rowPosition: 4,
              columnPosition: 2,
              hint: "Cinta magnética\nCapacidad: 5 - 10 Mb."),
        ],
      ),
      DnDSubLevelDomain(
        id: 4,
        lives: 5,
        urlImage: DnDLevelsAssets.TECNOLOGIA_L4_BG,
        rows: 5,
        columns: 3,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L4_ITEM_1,
            rowPosition: 1,
            columnPosition: 0,
            hint:
                "MacBook Air y Asus Eee PC: laptops con memoria Flash para el almacenamiento. Pantallas táctiles, pantallas OLED, bloqueo con huella de usuario y más.",
          ),
          DnDSubLevelItemDomain.singlePosition(
              id: 2,
              urlImage: DnDLevelsAssets.TECNOLOGIA_L4_ITEM_2,
              rowPosition: 2,
              columnPosition: 2,
              hint:
                  'Computadoras con acceso a Wi-Fi, tarjetas inalámbricas y antenas preinstaladas, puertos USB, cámaras y monitores LCD.'),
          DnDSubLevelItemDomain.singlePosition(
              id: 3,
              urlImage: DnDLevelsAssets.TECNOLOGIA_L4_ITEM_3,
              rowPosition: 3,
              columnPosition: 0,
              hint:
                  "IBM, Acorn: usaba el MS-DOS del sistema operativo de Microsoft, tenía chip Intel, entrada para dos disquetes y un monitor a color."),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L4_ITEM_4,
            rowPosition: 4,
            columnPosition: 2,
            hint:
                "Eniac: realizaba procesos y operaciones con instrucciones en lenguaje para máquinas.",
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 5,
        lives: 5,
        urlImage: DnDLevelsAssets.TECNOLOGIA_L5_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L5_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint: 'El IPhone es hecho por Apple desde 2007.',
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L5_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint: 'La red social Instagram fue adquirida por Facebook en 2012.',
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L5_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
            hint: 'Flutter es un framework desarrollado por Google.',
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L5_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
            hint: 'Intel es el mayor productor de microprocesadores del mundo.',
          ),
        ],
      ),
      DnDSubLevelDomain(
        id: 6,
        lives: 5,
        urlImage: DnDLevelsAssets.TECNOLOGIA_L6_BG,
        rows: 2,
        columns: 2,
        items: [
          DnDSubLevelItemDomain.singlePosition(
            id: 1,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L6_ITEM_1,
            rowPosition: 0,
            columnPosition: 0,
            hint:
                'Yandex es el segundo motor de busqueda más usado en el mundo.',
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 2,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L6_ITEM_2,
            rowPosition: 0,
            columnPosition: 1,
            hint:
                'MySQL es uno de los gestores de base de datos más usados del mundo.',
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 3,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L6_ITEM_3,
            rowPosition: 1,
            columnPosition: 0,
            hint: 'Azure es el servicio de nube de Microsoft.',
          ),
          DnDSubLevelItemDomain.singlePosition(
            id: 4,
            urlImage: DnDLevelsAssets.TECNOLOGIA_L6_ITEM_4,
            rowPosition: 1,
            columnPosition: 1,
            hint:
                'Meta está desarrollando un mundo virtual como el de Ready Player One.',
          ),
        ],
      ),
    ],
  );
}
