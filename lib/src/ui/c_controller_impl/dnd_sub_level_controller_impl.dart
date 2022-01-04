import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';

class DnDSubLevelControllerImpl extends DnDSubLevelController {
  late final DnDSubLevelUseCase subLevelUseCase;
  int remainingLives = 0;

  late final List<DnDSubLevelItemDomain> itemsToDrag;

  late final List<DropTargetItemDomain> itemsDropped;

  DnDSubLevelControllerImpl({
    required DnDSubLevelDomain subLevelDomain,
  }) : subLevelUseCase = DnDSubLevelUseCaseImpl(
          subLevelDomain: subLevelDomain,
        ) {
    remainingLives = subLevelUseCase.lives();
    itemsToDrag = subLevelUseCase.subLevelDomain.items;
    itemsDropped = _initItemsDropped();
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
  int get lives => subLevelUseCase.subLevelDomain.lives;

  @override
  String get imageUrl => subLevelUseCase.subLevelDomain.urlImage;

  @override
  int get columns => subLevelUseCase.subLevelDomain.columns;

  @override
  int get rows => subLevelUseCase.subLevelDomain.rows;

  void _breakHeart() {
    remainingLives--;
    if (remainingLives <= 0) {
      looseLevel();
    }
  }

  bool onWillAccept(DropTargetItemDomain drop) {
    return drop.accepting;
  }

  void onAccept(DropTargetItemDomain drop, DnDSubLevelItemDomain data) {
    bool accepted =
        drop.column == data.columnPosition && drop.row == data.rowPosition;

    if (accepted) {
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
    } else {
      _breakHeart();
    }
    update();
  }

  void looseLevel() {}
}
