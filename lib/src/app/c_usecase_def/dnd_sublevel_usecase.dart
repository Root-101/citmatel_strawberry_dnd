import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';
import 'package:clean_core/clean_core.dart';

abstract class DnDSubLevelUseCase extends AbstractUseCase {
  ///domain almacenado para acceder a la info
  DnDSubLevelDomain get subLevelDomain;

  ///cantidad de vidas maximas del nivel
  ///no se usa como getter por si hay que ponerle logica despues con comodines que aumenten las vidas
  int lives();
}
