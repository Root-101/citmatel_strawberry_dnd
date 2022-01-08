import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:confetti/confetti.dart';
import 'package:get/get.dart';

abstract class DnDSubLevelController extends GetxController {
  static const String TAG = "dnd-sub-level-controller";

  int get lives;

  int get remainingLives;

  String get imageUrl;

  int get columns;

  int get rows;

  bool shouldShake();

  ConfettiController confettiController();

  List<DnDSubLevelItemDomain> get itemsToDrag;

  List<DropTargetItemDomain> get itemsDropped;

  bool onWillAccept(DropTargetItemDomain drop);

  void onAccept(DropTargetItemDomain drop, DnDSubLevelItemDomain data);
}
