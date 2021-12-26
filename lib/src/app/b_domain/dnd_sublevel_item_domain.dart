import 'package:clean_core/clean_core.dart';

class DnDSubLevelItemDomain extends BasicDomainObject {
  int id;
  final String urlImage;
  final int rowPosition;
  final int columnPosition;
  final String hint;

  DnDSubLevelItemDomain({
    required this.id,
    required this.urlImage,
    required this.rowPosition,
    required this.columnPosition,
    this.hint = "",
  });
}
