import 'package:clean_core/clean_core.dart';

class DnDPositionDomain extends BasicDomainObject<DnDPositionDomain> {
  int id;
  final int row;
  final int column;

  DnDPositionDomain({
    this.id = 0,
    required this.row,
    required this.column,
  });

  @override
  DnDPositionDomain clone() {
    return DnDPositionDomain(
      id: this.id,
      row: this.row,
      column: this.column,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DnDPositionDomain &&
          runtimeType == other.runtimeType &&
          row == other.row &&
          column == other.column;

  @override
  int get hashCode => row.hashCode ^ column.hashCode;

  @override
  String toString() {
    return 'DnDPositionDomain{row: $row, column: $column}';
  }
}
