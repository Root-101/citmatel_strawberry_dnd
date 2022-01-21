import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_core/clean_core.dart';

class DnDSubLevelItemDomain extends BasicDomainObject<DnDSubLevelItemDomain> {
  int id;
  final String urlImage;
  late List<DnDPositionDomain> possiblesPositions;
  final String hint;

  DnDSubLevelItemDomain({
    required this.id,
    required this.urlImage,
    required this.possiblesPositions,
    this.hint = "",
  });

  DnDSubLevelItemDomain.singlePosition({
    required this.id,
    required this.urlImage,
    required int rowPosition,
    required int columnPosition,
    this.hint = "",
  }) {
    possiblesPositions = [
      DnDPositionDomain(id: 0, row: rowPosition, column: columnPosition)
    ];
  }

  @override
  DnDSubLevelItemDomain clone() {
    return DnDSubLevelItemDomain(
      id: this.id,
      urlImage: this.urlImage,
      possiblesPositions: this.possiblesPositions,
      hint: this.hint,
    );
  }
}
