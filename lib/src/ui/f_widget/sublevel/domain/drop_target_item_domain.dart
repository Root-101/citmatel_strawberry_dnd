import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';

class DropTargetItemDomain {
  int column;
  int row;
  bool accepting;
  DnDSubLevelItemDomain? item;

  DropTargetItemDomain({
    required this.column,
    required this.row,
    this.item,
    this.accepting = true,
  });
}
