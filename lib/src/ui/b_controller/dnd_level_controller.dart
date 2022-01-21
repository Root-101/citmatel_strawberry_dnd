import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:get/get.dart';

abstract class DnDLevelController extends GetxController {
  List<DnDLevelDomain> findAll();

  DnDLevelDomain findBy(int keyId);

  int count();

  bool showTutorial(int levelId, int subLevelid);
}
