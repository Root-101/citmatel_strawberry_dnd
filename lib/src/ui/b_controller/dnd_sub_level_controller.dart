import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class DnDSubLevelController extends GetxController {
  static const String TAG = "dnd-sub-level-controller";

  //la cantidad de estrellas va a estar entre [0,3] inclusive
  static const int MAX_STARS = 3;

  int get lives;

  int get remainingLives;

  String get imageUrl;

  int get columns;

  int get rows;

  int get stars;

  bool get shouldShake;

  int generateProgress();

  ConfettiController get confettiController;

  List<DnDSubLevelItemDomain> get itemsToDrag;

  List<DropTargetItemDomain> get itemsDropped;

  bool onWillAccept(DropTargetItemDomain drop);

  void onAccept(DropTargetItemDomain drop, DnDSubLevelItemDomain data,
      BuildContext context, GlobalKey key6, GlobalKey key7);
}
