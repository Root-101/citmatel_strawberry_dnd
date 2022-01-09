import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';
import 'package:confetti/confetti.dart';

class DnDSubLevelControllerImpl extends DnDSubLevelController {
  late final DnDSubLevelUseCase subLevelUseCase;
  int remainingLives = 0;

  late final List<DnDSubLevelItemDomain> itemsToDrag;

  late final List<DropTargetItemDomain> itemsDropped;

  late final ConfettiController confettiController;

  bool _shouldShake = false;

  bool shouldShake() => this._shouldShake;

  DnDSubLevelControllerImpl({
    required DnDSubLevelDomain subLevelDomain,
  }) : subLevelUseCase = DnDSubLevelUseCaseImpl(
          subLevelDomain: subLevelDomain,
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

  void _breakHeart() {
    remainingLives--;
    if (remainingLives <= 0) {
      StrawberryFunction.looseLevel();
    }
  }

  bool onWillAccept(DropTargetItemDomain drop) {
    _shouldShake = false;
    update();
    return drop.accepting;
  }

  void onAccept(DropTargetItemDomain drop, DnDSubLevelItemDomain data) {
    bool accepted =
        drop.column == data.columnPosition && drop.row == data.rowPosition;

    if (accepted) {
      _shouldShake = false;
      StrawberryAudio.playAudioCorrect();
      _makeConffeti();
      //busca la posicion del grid donde se soltó el item
      int posDropped = itemsDropped.indexWhere(
        (element) =>
            element.column == data.columnPosition &&
            element.row == data.rowPosition,
      );
      //sutituye el viejo por el item soltado
      itemsDropped[posDropped].item = data; //se le pone el data que se arrastro
      itemsDropped[posDropped].accepting =
          false; //se le quita el accepting para que no se pueda arrastrar nada de nuevo aqui

      //elimina de la lista el item que se arrastro
      itemsToDrag.removeWhere(
        (element) => element.id == data.id,
      );

      _doWinLevel();
    } else {
      _shouldShake = true;
      StrawberryVibration.vibrate();
      StrawberryAudio.playAudioWrong();
      _breakHeart();
    }
    update();
  }

  void _makeConffeti() {
    confettiController.play();
  }

  ///si se gano el nivel ve para otra pantalla, sino no hace nada
  void _doWinLevel() {
    if (itemsToDrag.isEmpty) {
      StrawberryFunction.winLevel();
    }
  }
}
