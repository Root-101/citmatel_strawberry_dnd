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

  @override
  int maxStars(DnDLevelDomain levelDomain) {
    return levelDomain.sublevel.length * DnDSubLevelController.MAX_STARS;
  }

  @override
  int winedStars(DnDLevelDomain levelDomain) {
    return Get.find<DnDSubLevelProgressUseCase>()
        .findByLevelId(levelDomain.id)
        .fold(
          0,
          (previousValue, element) => previousValue + element.stars,
        );
  }
}
