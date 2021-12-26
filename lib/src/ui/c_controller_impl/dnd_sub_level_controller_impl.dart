import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';

class DnDSubLevelControllerImpl extends DnDSubLevelController {
  late final DnDSubLevelUseCase subLevelUseCase;
  int remainingLives = 0;

  DnDSubLevelControllerImpl({
    required DnDSubLevelDomain subLevelDomain,
  }) : subLevelUseCase = DnDSubLevelUseCaseImpl(
          subLevelDomain: subLevelDomain,
        ) {
    remainingLives = subLevelUseCase.lives();
  }

  @override
  int get lives => subLevelUseCase.subLevelDomain.lives;

  void _breakHeart() {
    remainingLives--;
    if (remainingLives <= 0) {
      looseLevel();
    }
  }

  void looseLevel() {}
}
