import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';

class DnDSubLevelUseCaseImpl extends DnDSubLevelUseCase {
  ///domain almacenado para acceder a la info
  final DnDSubLevelDomain subLevelDomain;

  final DnDSubLevelProgressDomain subLevelProgressDomain;

  List<DnDSubLevelItemDomain> items() {
    List<DnDSubLevelItemDomain> items =
        subLevelDomain.items.map((e) => e.clone()).toList();
    items.shuffle();
    return items;
  }

  DnDSubLevelUseCaseImpl({
    required this.subLevelDomain,
    required this.subLevelProgressDomain,
  });

  ///cantidad de vidas maximas del nivel
  ///no se usa como getter por si hay que ponerle logica despues con comodines que aumenten las vidas
  /// si hay algun bono se le suma aqui a las vidas y ya
  @override
  int lives() {
    return subLevelDomain.lives;
  }

  @override
  int get columns => subLevelDomain.columns;

  @override
  int get rows => subLevelDomain.rows;

  @override
  String get urlImage => subLevelDomain.urlImage;

  @override
  int get stars => subLevelProgressDomain.stars;
}
