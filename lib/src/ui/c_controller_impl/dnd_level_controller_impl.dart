import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:get/get.dart';

class DnDLevelControllerImpl extends DnDLevelController {
  final DnDLevelUseCase levelUseCase = Get.find<DnDLevelUseCase>();

  @override
  List<DnDLevelDomain> findAll() {
    return levelUseCase.findAll();
  }

  @override
  DnDLevelDomain findBy(int keyId) {
    return levelUseCase.findBy(keyId);
  }

  @override
  int count() {
    return levelUseCase.count();
  }
}
