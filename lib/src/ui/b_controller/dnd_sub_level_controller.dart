import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

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

  DnDSubLevelItemDomain get firstAccepted;

  bool get shouldShake;

  // Show the tutorial if is the first sublevel of the first level.
  bool get showTutorial;

  void stopTutorial();

  int generateProgress();

  ConfettiController get confettiController;

  List<DnDSubLevelItemDomain> get itemsToDrag;

  List<DropTargetItemDomain> get itemsDropped;

  bool onWillAccept(DropTargetItemDomain drop);

  void onAccept(DropTargetItemDomain drop, DnDSubLevelItemDomain data,
      BuildContext context, GlobalKey key6, GlobalKey key7);

  //devuelve el tema del nivel al que pertenece este subnivel
  String subLevelTheme();

  //devuelve el numero del subnivel en los niveles, basicamene el id del subnivel
  int subLevelNumber();

  TutorialCoachMark get tutorialCoach;
}
