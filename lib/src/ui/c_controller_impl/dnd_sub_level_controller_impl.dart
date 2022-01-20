import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';
import 'package:confetti/confetti.dart';

class DnDSubLevelControllerImpl extends DnDSubLevelController {
  late final DnDSubLevelUseCase subLevelUseCase;
  int remainingLives = 0;

  late final List<DnDSubLevelItemDomain> itemsToDrag;

  late final List<DropTargetItemDomain> itemsDropped;

  late final ConfettiController confettiController;

  bool shouldShake = false;

  DnDSubLevelControllerImpl({
    required DnDSubLevelDomain subLevelDomain,
    required DnDSubLevelProgressDomain subLevelProgressDomain,
  }) : subLevelUseCase = DnDSubLevelUseCaseImpl(
          subLevelDomain: subLevelDomain,
          subLevelProgressDomain: subLevelProgressDomain,
        ) {
    remainingLives = subLevelUseCase.lives();
    itemsToDrag = subLevelUseCase.items();
    itemsDropped = _initItemsDropped();
    confettiController = ConfettiController(
      duration: const Duration(milliseconds: 50),
    );
  }

  _initItemsDropped() {
    List<DropTargetItemDomain> items = [];
    for (int row = 0; row < rows; row++) {
      for (int col = 0; col < columns; col++) {
        items.add(DropTargetItemDomain(column: col, row: row));
      }
    }
    return items;
  }

  @override
  int get lives => subLevelUseCase.lives();

  @override
  String get imageUrl => subLevelUseCase.urlImage;

  @override
  int get columns => subLevelUseCase.columns;

  @override
  int get rows => subLevelUseCase.rows;

  @override
  int get stars => subLevelUseCase.stars;

  bool onWillAccept(DropTargetItemDomain drop) {
    shouldShake = false;
    update();
    return drop.accepting;
  }

  void onAccept(DropTargetItemDomain drop, DnDSubLevelItemDomain data) {
    bool accepted = data.possiblesPositions.contains(drop.position);

    //si lo acepta no vibra, si no lo acepta si vibra
    shouldShake = !accepted;
    if (accepted) {
      //si es correcto reproduce audio y hace conffeti
      StrawberryAudio.playAudioCorrect();
      _makeConffeti();

      //busca la posicion del grid donde se soltó el item
      int posDropped = itemsDropped.indexWhere(
        (element) => element.position == drop.position,
      );
      //sutituye el viejo por el item soltado
      itemsDropped[posDropped].item = data; //se le pone el data que se arrastro
      itemsDropped[posDropped].accepting =
          false; //se le quita el accepting para que no se pueda arrastrar nada de nuevo aqui

      //elimina de la lista el item que se arrastro
      itemsToDrag.removeWhere(
        (element) => element.id == data.id,
      );

      //revisa si se gano el nivel
      _doWinLevel();
    } else {
      //si está mal vibra, reproduce audio de error y rompe un corazon
      StrawberryVibration.vibrate();
      StrawberryAudio.playAudioWrong();
      _breakHeart();
    }
    update();
  }

  void _makeConffeti() {
    confettiController.play();
  }

  void _breakHeart() {
    remainingLives--;
    //revisa si se perdio por completo el nivel
    _doLooseLevel();
  }

  ///separado en metodos el _doLooseLevel y el _doWinLevel para estandarizar su uso
  ///si se pierde el nivel va para la pantalla de looser, sino no hace nada
  ///se pierde el nivel cuando las vidas llegan a 0
  void _doLooseLevel() {
    if (remainingLives <= 0) {
      StrawberryFunction.looseLevel(
        childFirstText: StrawberryAnimatedTextKit.rotateAnimatedText(texts: [
          'Te has quedado sin vidas.',
          'Inténtalo de nuevo.',
          'El que persevera triunfa.',
        ]),
      );
      _doSaveProgress(0);
    }
  }

  ///si se gano el nivel ve para otra pantalla de winner, sino no hace nada
  ///se gana el nivel cuando no quedan mas elementos para arrastrar
  void _doWinLevel() {
    if (itemsToDrag.isEmpty) {
      StrawberryFunction.winLevel();
      _doSaveProgress(3);
    }
  }

  void _doSaveProgress(int stars) {
    subLevelUseCase.saveProgress(stars);
  }
}
