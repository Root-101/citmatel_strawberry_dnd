import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';
import 'package:clean_core/clean_core.dart';

abstract class DnDSubLevelUseCase extends AbstractUseCase {
  int get columns;

  int get rows;

  int get stars;

  void saveProgress(int stars);

  List<DnDSubLevelItemDomain> items();

  ///cantidad de vidas maximas del nivel
  ///no se usa como getter por si hay que ponerle logica despues con comodines que aumenten las vidas
  int lives();

  bool showTutorial();

  //devuelve el tema del nivel al que pertenece este subnivel
  String subLevelTheme();

  //devuelve el numero del subnivel en los niveles, basicamene el id del subnivel
  int subLevelNumber();
}
