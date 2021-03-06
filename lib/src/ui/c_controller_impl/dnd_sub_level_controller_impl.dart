import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/utils/pair.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class DnDSubLevelControllerImpl extends DnDSubLevelController {
  late final DnDSubLevelUseCase subLevelUseCase;
  int remainingLives = 0;

  late final List<DnDSubLevelItemDomain> itemsToDrag;

  late final List<DropTargetItemDomain> itemsDropped;

  late final ConfettiController confettiController;

  bool shouldShake = false;
  bool isFirstTime = true;

  late DnDSubLevelItemDomain firstAccepted;

  late bool _showTutorial;

  TutorialCoachMark? _tutorialCoachMark;

  late bool mute;

  late FToast notification;

  DnDSubLevelControllerImpl({
    required DnDSubLevelDomain subLevelDomain,
    required DnDSubLevelProgressDomain subLevelProgressDomain,
    required this.mute,
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
    _showTutorial = subLevelUseCase.showTutorial();
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
  int get columns => subLevelUseCase.columns;

  @override
  int get rows => subLevelUseCase.rows;

  @override
  int get stars => subLevelUseCase.stars;

  @override
  String get imageUrl => subLevelUseCase.imageUrl;

  // Show the tutorial if is the first sublevel of the first level.
  bool get showTutorial => _showTutorial;

  bool onWillAccept(DropTargetItemDomain drop) {
    shouldShake = false;
    update();
    return drop.accepting;
  }

  void onAccept(DropTargetItemDomain drop, DnDSubLevelItemDomain data,
      BuildContext context, GlobalKey key6, GlobalKey key7) {
    if (remainingLives <= 0 || itemsToDrag.isEmpty) {
      return;
    }

    bool accepted = data.possiblesPositions.contains(drop.position);

    //si lo acepta no vibra, si no lo acepta si vibra
    shouldShake = !accepted;
    if (accepted) {
      //si es correcto reproduce audio y hace conffeti
      StrawberryAudio.playAudioCorrect(mute);
      _makeConffeti();
      if (data.hint.isNotEmpty &&
          Get.find<DnDShowPopupController>().isShowing()) {
        _initNotifications(context);
        _showNotifications(data.hint);
      }
      //busca la posicion del grid donde se solt?? el item
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
      if (isFirstTime) {
        firstAccepted = data;
        isFirstTime = false;
        if (showTutorial) {
          // Continue the tutorial.
          _tutorialCoachMark = StrawberryTutorial.showTutorial(
            context: context,
            targets: [
              StrawberryTutorial.addTarget(
                identify: "Target Answer Right",
                keyTarget: key6,
                shadowColor: Colors.green,
                title: 'Respuesta correcta.',
                description:
                    'Felicidades lo ha conseguido. Contin??e as?? para ganar el nivel.',
                shape: ShapeLightFocus.Circle,
                contentAlign: ContentAlign.top,
                showImage: false,
                descriptionMaxLines: 2,
              ),
            ],
            onSkip: () {
              stopTutorial();
            },
          );
        }
      }
      //revisa si se gano el nivel
      _doWinLevel();
    } else {
      //si est?? mal vibra, reproduce audio de error y rompe un corazon
      StrawberryVibration.vibrate();
      StrawberryAudio.playAudioWrong(mute);
      _breakHeart(context, key7);
    }
    update();
  }

  void _makeConffeti() {
    confettiController.play();
  }

  void _breakHeart(BuildContext context, GlobalKey key7) {
    remainingLives--;
    if (lives - remainingLives == 1 && showTutorial) {
      // Continue the tutorial.
      _tutorialCoachMark = StrawberryTutorial.showTutorial(
        context: context,
        targets: [
          StrawberryTutorial.addTarget(
            identify: "Target Answer Wrong",
            keyTarget: key7,
            shadowColor: Colors.red,
            title: 'Respuesta incorrecta.',
            description: 'Cuando se responde incorrectamente pierde una vida.'
                '\n Cuando se quede sin vidas se le dar?? la posibilidad de intentarlo de nuevo.'
                '\n Solo si coloca todos los elementos correctamente podr?? pasar de nivel.',
            shape: ShapeLightFocus.Circle,
            showImageOnTop: false,
            imagePadding: 50,
            descriptionMaxLines: 6,
          ),
        ],
        onSkip: () {
          stopTutorial();
        },
      );
    }
    //revisa si se perdio por completo el nivel
    _doLooseLevel();
  }

  ///separado en metodos el _doLooseLevel y el _doWinLevel para estandarizar su uso
  ///si se pierde el nivel va para la pantalla de looser, sino no hace nada
  ///se pierde el nivel cuando las vidas llegan a 0
  void _doLooseLevel() {
    if (remainingLives <= 0) {
      StrawberryFunction.looseLevel(
        mute: mute,
        leftButtonFunction: () => Get.off(
          DnDSubLevelLoading(
            mute: mute,
            subLevelDomain: subLevelUseCase.subLevelDomain,
            subLevelProgressDomain: subLevelUseCase.subLevelProgressDomain,
          ),
        ),
        rightButtonFunction: () => Get.back(closeOverlays: true),
        childFirstText: [
          'Se ha quedado sin vidas.',
          'Int??ntelo de nuevo.',
          'El que persevera triunfa.',
        ],
        stars: generateProgress(),
        maxStar: DnDSubLevelController.MAX_STARS,
      );
      _doSaveProgress(0);
    }
  }

  ///si se gano el nivel ve para otra pantalla de winner, sino no hace nada
  ///se gana el nivel cuando no quedan mas elementos para arrastrar
  void _doWinLevel() {
    if (itemsToDrag.isEmpty) {
      StrawberryFunction.winLevel(
        mute: mute,
        leftButtonFunction: () {
          Pair<DnDSubLevelDomain, DnDSubLevelProgressDomain> nextLevel =
              Get.find<DnDLevelController>()
                  .nextLevel(subLevelUseCase.subLevelProgressDomain);
          Get.off(
            DnDSubLevelLoading(
              mute: mute,
              subLevelDomain: nextLevel.a,
              subLevelProgressDomain: nextLevel.b,
            ),
          );
        },
        rightButtonFunction: () => Get.back(closeOverlays: true),
        stars: generateProgress(),
        maxStar: DnDSubLevelController.MAX_STARS,
      );
      _doSaveProgress(generateProgress());
    }
  }

  int generateProgress() {
    double progress = (remainingLives / lives) * 100;
    if (progress >= 99) {
      return DnDSubLevelController.STARS_MULTIPLIER *
          DnDSubLevelController.MAX_STARS; //3 enteras
    } else if (progress >= 79) {
      return 2 * DnDSubLevelController.STARS_MULTIPLIER + 1; //2 enteras + media
    } else if (progress >= 59) {
      return 2 * DnDSubLevelController.STARS_MULTIPLIER; //2 enteras
    } else if (progress >= 39) {
      return 1 * DnDSubLevelController.STARS_MULTIPLIER + 1; //1 entera + media
    } else if (progress >= 19) {
      return 1 * DnDSubLevelController.STARS_MULTIPLIER; //1 entera
    } else {
      return 0;
    }
  }

  void _doSaveProgress(int stars) {
    //salva el progreso
    subLevelUseCase.saveProgress(stars);

    //actualiza manual la lista del level para que al volver atras ya este actualizado
    Get.find<DnDLevelController>().update();
  }

  String subLevelTheme() => subLevelUseCase.subLevelTheme();

  int subLevelNumber() => subLevelUseCase.subLevelNumber();

  @override
  void stopTutorial() {
    _showTutorial = false;
  }

  void initTutorialCoachMark({
    required BuildContext context,
    required List<TargetFocus> targets,
  }) {
    _tutorialCoachMark = StrawberryTutorial.showTutorial(
      context: context,
      targets: targets,
      onSkip: () {
        stopTutorial();
      },
    );
  }

  @override
  void dispose() {
    StrawberryFunction.dispose();
    _tutorialCoachMark?.finish();
    super.dispose();
  }

  void _initNotifications(BuildContext context) {
    notification = FToast();
    notification.removeQueuedCustomToasts();
    notification.init(context);
  }

  _showNotifications(String text) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.green.shade800,
      ),
      child: GestureDetector(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.info_outline_rounded,
              color: Colors.white,
            ),
            SizedBox(
              width: 12.0,
            ),
            Expanded(
              child: Text(
                text,
                style: Get.theme.textTheme.bodyText2!.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        onTap: () {
          notification.removeCustomToast();
        },
        onTapCancel: () {
          notification.removeCustomToast();
        },
      ),
    );
    notification.showToast(
      child: toast,
      gravity: ToastGravity.TOP,
      toastDuration: Duration(seconds: 4),
    );
  }
}
