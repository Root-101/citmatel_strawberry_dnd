import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

abstract class DnDSubLevelController extends GetxController {
  static const String TAG = "dnd-sub-level-controller";

  ///la cantidad de estrellas(visualmente) va a estar entre [0,3] inclusive
  static const int MAX_STARS = 3;

  ///La cantidad de estrellas pueden ser decimales al punto medio, o sea:
  ///se puede ganar 1 estrella o 1 y media o 2 o 2 1/2
  ///y para no almacenar 1.5 para estrella y media, se almacena 3 estrellas
  ///en este caso el multiplicador indica los productos de quien son estrellas entero
  ///como por defecto son 2, significa que cada 2 unidades es una estrella entera
  ///por lo tanto la cantidad de estrellas es:
  ///cantidad: 5
  ///enteras: 2 que sale de: 5 / STARS_MULTIPLIER = (int) 2.5. La parte entera de la division
  ///parcial 1 que sale de: 5 % STARS_MULTIPLIER = (int) 1. O la parte decimal de la división anterior
  ///el parcial siembre va a ser 0 o 1, como un booleano si tiene una media estrella
  static const int STARS_MULTIPLIER = 2;

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
