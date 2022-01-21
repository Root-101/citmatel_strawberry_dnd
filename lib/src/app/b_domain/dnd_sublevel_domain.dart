import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';
import 'package:clean_core/clean_core.dart';

class DnDSubLevelDomain extends BasicDomainObject<DnDSubLevelDomain> {
  int id;
  final String urlImage;
  final int rows;
  final int columns;
  final List<DnDSubLevelItemDomain> items;
  final int lives;

  DnDSubLevelDomain({
    required this.id,
    required this.urlImage,
    required this.rows,
    required this.columns,
    required this.items,
    this.lives = 5,
  }) {
    _runValidations();
  }

  void _runValidations() {
    Set<DnDPositionDomain> set = {};
    items.forEach((sublevelItems) {
      sublevelItems.possiblesPositions.forEach((positions) {
        if (set.contains(positions)) {
          //solo un warning, xq una vez caiga el primero en la posicion el 2do va a tener que ponerse en otra
          //se vuelve un problema se alguno de los items esa es su unica posicion y alguine le toma el lugar antes
          print("En la posicion $positions coinciden dos elementos");
        }
        set.add(positions);
        if (positions.row >= rows || positions.row < 0) {
          throw "$sublevelItems va en una row fuera de la cantidad maxima o minima";
        }
        if (positions.column >= columns || positions.column < 0) {
          throw "$sublevelItems va en una column fuera de la cantidad maxima o minima";
        }
      });
    });
  }

  @override
  DnDSubLevelDomain clone() {
    return DnDSubLevelDomain(
      id: this.id,
      urlImage: this.urlImage,
      rows: this.rows,
      columns: this.columns,
      items: this.items.map((e) => e.clone()).toList(),
      lives: this.lives,
    );
  }
}
