import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';
import 'package:clean_core/clean_core.dart';

class DnDSubLevelDomain extends BasicDomainObject {
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
    items.forEach((element) {
      if (element.rowPosition >= rows || element.rowPosition < 0) {
        throw "$element va en una row fuera de la cantidad maxima o minima";
      }
      if (element.columnPosition >= columns || element.columnPosition < 0) {
        throw "$element va en una column fuera de la cantidad maxima o minima";
      }
    });
  }
}
