import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';

class DnDSubLevelUseCaseImpl extends DnDSubLevelUseCase {
  ///domain almacenado para acceder a la info
  final DnDSubLevelDomain subLevelDomain;

  DnDSubLevelUseCaseImpl({required this.subLevelDomain});

  ///cantidad de vidas maximas del nivel
  ///no se usa como getter por si hay que ponerle logica despues con comodines que aumenten las vidas
  /// si hay algun bono se le suma aqui a las vidad y ya
  @override
  int lives() {
    return subLevelDomain.lives;
  }

}
