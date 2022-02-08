import 'package:citmatel_strawberry_dnd/src/app/dnd_app_exporter.dart';
import 'package:citmatel_strawberry_tools/assets/assets_exporter.dart';
import 'package:clean_core/clean_core.dart';
import 'package:flutter_animator/utils/pair.dart';
import 'package:get/get.dart';

class DnDLevelUseCaseImpl extends DefaultReadUseCase<DnDLevelDomain>
    implements DnDLevelUseCase {
  DnDLevelUseCaseImpl(List<DnDLevelDomain> info) : super(info);

  @override
  String themeOfGivenLevel(DnDSubLevelProgressDomain progressDomain) {
    return levelOfProgress(progressDomain).a.theme;
  }

  @override
  ToolsThemesBackgroundImage themeLooksOfGivenLevel(
      DnDSubLevelProgressDomain progressDomain) {
    return levelOfProgress(progressDomain).a.themeBackgroundImage;
  }

  @override
  Pair<DnDLevelDomain, DnDSubLevelDomain> levelOfProgress(
      DnDSubLevelProgressDomain progressDomain) {
    DnDLevelDomain level =
        Get.find<DnDLevelUseCase>().findBy(progressDomain.dndLevelDomainId);

    DnDSubLevelDomain subLevel = level.sublevel.firstWhere(
        (element) => element.id == progressDomain.dndSubLevelDomainId);

    return Pair(level, subLevel);
  }

  @override
  Pair<DnDSubLevelDomain, DnDSubLevelProgressDomain> nextLevel(
      DnDSubLevelProgressDomain currentProgress) {
    Pair<DnDLevelDomain, DnDSubLevelDomain> current =
        levelOfProgress(currentProgress);

    int currentSubLevelIndex = current.a.sublevel.indexOf(current.b);
    if (currentSubLevelIndex < current.a.sublevel.length - 1) {
      //no he llegado al ultimo de ese tema, sumo uno y sigo

      //el mismo nivel
      DnDLevelDomain nextLevel = current.a;
      //el proximo subnivel es el actual +1
      DnDSubLevelDomain nextSubLevel =
          current.a.sublevel[currentSubLevelIndex + 1];

      //por esos dos saco el progreso
      DnDSubLevelProgressDomain nextProgress =
          Get.find<DnDSubLevelProgressUseCase>()
              .findByAll(nextLevel, nextSubLevel);
      return Pair(nextSubLevel, nextProgress);
    } else if (currentSubLevelIndex >= current.a.sublevel.length - 1) {
      //ultimo subnivel

      //indice del nivel, para buscar el siguiente
      int currentLevelIndex = findAll().indexOf(current.a);

      //no he llegado al ultimo nivel
      if (currentLevelIndex < count() - 1) {
        //voy al siguiente nivel
        DnDLevelDomain nextLevel = findAll()[currentLevelIndex + 1];
        //cojo el primer subnivel del siguiente subnivel
        DnDSubLevelDomain nextSubLevel = nextLevel.sublevel[0];
        DnDSubLevelProgressDomain nextProgress =
            Get.find<DnDSubLevelProgressUseCase>()
                .findByAll(nextLevel, nextSubLevel);
        return Pair(nextSubLevel, nextProgress);
      } else {
        DnDLevelDomain firstLevel = findAll()[1];
        DnDSubLevelDomain nextSubLevel = firstLevel.sublevel[0];
        DnDSubLevelProgressDomain nextProgress =
            Get.find<DnDSubLevelProgressUseCase>()
                .findByAll(firstLevel, nextSubLevel);
        return Pair(nextSubLevel, nextProgress);
      }
    }
    //POR DEFECTO, NUNK SE DEBE LLAGAR AQUI
    //pal primer subnivel del primer nivel. Me salto el 0 que es el tutorial
    print("no se debe llegar aquí");
    return Pair(DnDLevelTutorial.tutorialSubLevel,
        DnDLevelTutorial.tutorialSubLevelProgress());
  }
}
