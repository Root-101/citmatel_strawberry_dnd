import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';

class DropTargetItemDomain {
  late DnDPositionDomain position;
  bool accepting;
  DnDSubLevelItemDomain? item;

  DropTargetItemDomain({
    required int column,
    required int row,
    this.item,
    this.accepting = true,
  }) {
    position = DnDPositionDomain(row: row, column: column);
  }

  @override
  String toString() {
    return 'DropTargetItemDomain{position: $position}';
  }
}
