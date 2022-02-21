import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart'
    hide FadeInAnimation, FadeIn;
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

// ignore: must_be_immutable
class DnDSubLevelScreen extends StatefulWidget {
  static const ROUTE_NAME = "/dnd-sublevel-screen";

  DnDSubLevelScreen({
    required DnDSubLevelDomain subLevelDomain,
    required DnDSubLevelProgressDomain subLevelProgressDomain,
  }) : super() {
    Get.put<DnDSubLevelController>(
      DnDSubLevelControllerImpl(
        subLevelDomain: subLevelDomain,
        subLevelProgressDomain: subLevelProgressDomain,
      ),
    );
  }

  @override
  State<DnDSubLevelScreen> createState() => _DnDSubLevelScreenState();
}

class _DnDSubLevelScreenState extends State<DnDSubLevelScreen> {
  late final DnDSubLevelController _controller;
  List<TargetFocus> targets = [];

  // Steps in the tutorial.
  GlobalKey _key1 = GlobalKey();
  GlobalKey _key2 = GlobalKey();
  GlobalKey _key3 = GlobalKey();
  GlobalKey _key4 = GlobalKey();
  GlobalKey _key5 = GlobalKey();
  GlobalKey _key6 = GlobalKey();
  GlobalKey _key7 = GlobalKey();
  GlobalKey _keyAppBarBack = GlobalKey();
  GlobalKey _keyAppBarStars = GlobalKey();
  GlobalKey _keyAppBarLevel = GlobalKey();
  GlobalKey _keyAppBarTheme = GlobalKey();

  @override
  void initState() {
    _controller = Get.find();

    if (_controller.showTutorial) {
      //Start showcase view after current widget frames are drawn.
      WidgetsBinding.instance!.addPostFrameCallback((duration) async {
        // Is necessary to wait a few seconds because the widgets haven't been created.
        await Future.delayed(Duration(milliseconds: 500));
        // Initialice the steps of the tutorial.
        initTargets();
        // Start the tutorial.
        _controller.initTutorialCoachMark(
          context: context,
          targets: targets,
        );
      });
    }

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    Get.delete<DnDSubLevelController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<DnDSubLevelController>(
      builder: (context) {
        return CommonsSubLevelBuilder.buildScaffold(
          backKey: _controller.showTutorial ? _keyAppBarBack : null,
          levelKey: _controller.showTutorial ? _keyAppBarLevel : null,
          themeKey: _controller.showTutorial ? _keyAppBarTheme : null,
          starsKey: _controller.showTutorial ? _keyAppBarStars : null,
          deviceSize: size,
          tema: _controller.subLevelTheme(),
          nivel: _controller.subLevelNumber(),
          stars: _controller.generateProgress(),
          maxStar: DnDSubLevelController.MAX_STARS,
          body: SafeArea(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildListOfHearts(size),
                    _buildDroppedItems(size),
                    _controller.shouldShake
                        ? Shake(
                            child: _buildDraggableItemList(size),
                          )
                        : _buildDraggableItemList(size),
                  ],
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: StrawberryWidgets.confettiWidget(
                    confettiController: _controller.confettiController,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _buildListOfHearts(Size size) {
    int countOfColumns = _controller.lives;
    return Padding(
      key: _key1,
      padding: EdgeInsets.only(left: size.width / 21),
      child: _animatedGridView(
        showPadding: true,
        size: size,
        cantOfColumns: countOfColumns,
        children: List.generate(
          countOfColumns,
          (int index) {
            return index < _controller.lives - _controller.remainingLives
                ? Swing(
                    key: index == 0 ? _key7 : null,
                    child: DecoratedIcon(
                      FontAwesomeIcons.heartBroken,
                      color: Colors.red.shade900,
                      size: size.width / 7.5,
                      shadows: [
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Colors.grey.shade200,
                        ),
                        BoxShadow(
                          blurRadius: 12.0,
                          color: Colors.grey.shade200,
                          offset: Offset(0, 3.0),
                        ),
                      ],
                    ),
                  )
                : _buildAnimations(
                    index,
                    countOfColumns,
                    HeartBeat(
                      child: DecoratedIcon(
                        FontAwesomeIcons.solidHeart,
                        color: Colors.red.shade900,
                        size: size.width / 7.5,
                        shadows: [
                          BoxShadow(
                            blurRadius: 12.0,
                            color: Colors.grey.shade200,
                          ),
                          BoxShadow(
                            blurRadius: 12.0,
                            color: Colors.grey.shade200,
                            offset: Offset(0, 3.0),
                          ),
                        ],
                      ),
                      preferences: AnimationPreferences(
                        autoPlay: AnimationPlayStates.Loop,
                        duration: Duration(seconds: 2),
                        magnitude: 0.5,
                      ),
                    ),
                  );
          },
        ),
      ),
    );
  }

  _animatedGridView(
      {required int cantOfColumns,
      required List<Widget> children,
      required Size size,
      bool showPadding = false,
      double aspectRatio = 1.0}) {
    return AnimationLimiter(
      child: GridView.count(
        childAspectRatio: aspectRatio,
        padding: showPadding
            ? EdgeInsets.symmetric(
                horizontal: size.width / 21,
                vertical: size.width / 31,
              )
            : EdgeInsets.zero,
        crossAxisCount: cantOfColumns,
        // Amount of columns in the grid
        shrinkWrap: true,
        //With this GridView only occupies the space it needs
        physics: NeverScrollableScrollPhysics(),
        //No scroll needed
        children: children,
      ),
    );
  }

  _buildAnimations(int index, int countOfColumns, Widget widget) {
    return AnimationConfiguration.staggeredGrid(
      columnCount: countOfColumns,
      position: index,
      duration: const Duration(milliseconds: 1375),
      child: ScaleAnimation(
        scale: 0.5,
        child: FadeInAnimation(
          child: widget,
        ),
      ),
    );
  }

  _buildDroppedItems(Size size) {
    final double padding = size.width / 21;
    return Padding(
      key: _key3,
      padding: EdgeInsets.all(padding),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          child: FadeIn(
            duration: Duration(milliseconds: 4000),
            curve: Curves.easeInOutCirc,
            child: Container(
              width: MediaQuery.of(Get.context!).size.width - 2 * padding,
              height: MediaQuery.of(Get.context!).size.width - 2 * padding,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_controller.imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
              child: _buildDragTargetGridView(size),
            ),
          ),
        ),
      ),
    );
  }

  _buildDragTargetGridView(Size size) {
    int columns = _controller.columns;

    List<DropTargetItemDomain> items = _controller.itemsDropped;
    return _animatedGridView(
      size: size,
      cantOfColumns: columns,
      children: List.generate(
        items.length,
        (int index) {
          return _buildAnimations(
            index,
            columns,
            _buildSingleDragTarget(
              items[index],
            ),
          );
        },
      ),
      aspectRatio: _controller.rows / columns,
    );
  }

  _buildSingleDragTarget(DropTargetItemDomain drop) {
    return DragTarget<DnDSubLevelItemDomain>(
      onWillAccept: (_) => _controller.onWillAccept(drop),
      onAccept: (data) =>
          _controller.onAccept(drop, data, context, _key6, _key7),
      builder: (context, acceptedItems, rejectedItems) => DottedBorder(
        color: Colors.black26,
        dashPattern: const <double>[3, 5],
        strokeWidth: 0.8,
        child: drop.item == null
            ? Container(
                key: drop.position.column == 2 && drop.position.row == 4
                    ? _key5
                    : null,
              )
            : Container(
                key: _controller.firstAccepted == drop.item ? _key6 : null,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    //no va a ser null porque lo verifique arriba
                    image: AssetImage(drop.item!.urlImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
      ),
    );
  }

  _buildDraggableItemList(Size size) {
    double defaultH = size.height / 8;
    double defaultW = defaultH;
    int initialPage = max((_controller.itemsToDrag.length / 2).round() - 1, 0);
    return Padding(
      key: _key2,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: defaultH,
          initialPage: initialPage,
          viewportFraction: 0.4,
          enableInfiniteScroll: false,
          enlargeCenterPage: true,
        ),
        items: _controller.itemsToDrag
            .map(
              (item) => ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Draggable<DnDSubLevelItemDomain>(
                  data: item,
                  feedback: _buildDraggableFeedbackItem(
                      defaultW, defaultH, item.urlImage),
                  childWhenDragging: _buildDraggableChildWhenDragging(
                      defaultW, defaultH, item.urlImage),
                  child: _buildDraggableChild(
                      defaultW, defaultH, item.urlImage, item.id),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  //child normal en la lista
  _buildDraggableChild(double w, double h, String image, int item) {
    return Container(
      key: item == 2 ? _key4 : Key(""),
      width: w,
      height: h,
      child: Image.asset(
        image,
        fit: BoxFit.contain,
      ),
    );
  }

  //child que se queda en la lista cuando se esta arrastrando
  _buildDraggableChildWhenDragging(double w, double h, String image) {
    return Container(
      width: w,
      height: h,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.grey, BlendMode.saturation),
        child: Image.asset(
          image,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  //child que se va arrastrando
  _buildDraggableFeedbackItem(double w, double h, String image) {
    return Container(
      width: w,
      height: h,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Image.asset(
          image,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  // Targets for the tutorial.
  void initTargets() {
    targets.add(
      StrawberryTutorial.addTarget(
        identify: "Target Back Button",
        keyTarget: _keyAppBarBack,
        shadowColor: Colors.blue.shade800,
        title: 'Atrás',
        description:
            'Pulse este botón si desea volver a la pantalla de niveles.',
        showImageOnTop: false,
        imagePadding: 50,
        descriptionMaxLines: 2,
      ),
    );

    targets.add(
      StrawberryTutorial.addTarget(
        identify: "Target Level",
        keyTarget: _keyAppBarLevel,
        shadowColor: Colors.red,
        title: 'Nivel',
        description: 'Este número indica el nivel en el que se encuentra.',
        showImageOnTop: false,
        imagePadding: 50,
        descriptionMaxLines: 2,
      ),
    );

    targets.add(
      StrawberryTutorial.addTarget(
        identify: "Target Theme",
        keyTarget: _keyAppBarTheme,
        shadowColor: Colors.cyan.shade900,
        title: 'Tema',
        description:
            'Este texto indica el tema del nivel en el que se encuentra.',
        showImageOnTop: false,
        imagePadding: 50,
        descriptionMaxLines: 2,
      ),
    );

    targets.add(
      StrawberryTutorial.addTarget(
        identify: "Target Stars",
        keyTarget: _keyAppBarStars,
        shadowColor: Colors.teal,
        title: 'Estrellas',
        description:
            'Las estrellas indican cuan bien has realizado el nivel.\nPara obtenerlas todas debes completar el nivel sin equivocarte ni una sola vez.',
        showImageOnTop: false,
        imagePadding: 50,
        descriptionMaxLines: 5,
      ),
    );

    targets.add(
      StrawberryTutorial.addTarget(
        identify: "Target Hearts",
        keyTarget: _key1,
        shadowColor: Colors.pink,
        title: 'Cantidad de vidas.',
        description:
            'Las vidas son la cantidad de intentos que tienes para equivocarte.\n Si las pierdes todas deberás empezar el nivel de nuevo.',
        showImageOnTop: false,
        imagePadding: 50,
        descriptionMaxLines: 4,
      ),
    );

    targets.add(
      StrawberryTutorial.addTarget(
        identify: "Target Draggable Items",
        keyTarget: _key2,
        shadowColor: Colors.indigo,
        contentAlign: ContentAlign.top,
        title: 'Elementos arrastrables.',
        description:
            'Debe arrastrar, cada uno de los elementos de esta lista, hacia la posición correcta, en la imagen de arriba, para poder ganar.',
        imagePadding: 50,
        descriptionMaxLines: 4,
      ),
    );

    targets.add(
      StrawberryTutorial.addMultipleTarget(
        identify: "Target Dropped Items",
        keyTarget: _key3,
        shadowColor: Colors.deepOrange,
        title: 'Imagen a completar.',
        shape: ShapeLightFocus.Circle,
        description:
            'Debe arrastrar los elementos de la lista inferior hacia la posición correcta en esta imagen.',
        showImage: false,
        descriptionMaxLines: 2,
      ),
    );

    targets.add(
      StrawberryTutorial.addTarget(
        identify: "Target Draggable Item",
        keyTarget: _key4,
        shadowColor: Colors.amber,
        contentAlign: ContentAlign.top,
        title: 'Objeto.',
        description:
            'Arrastra el objeto hacia la posición que se te indicará a continuación.',
        shape: ShapeLightFocus.Circle,
        imagePadding: 50,
        descriptionMaxLines: 2,
      ),
    );
    targets.add(
      StrawberryTutorial.addMultipleTarget(
        identify: "Target Drop",
        keyTarget: _key5,
        shadowColor: Colors.purple,
        title: 'Lugar del Objeto.',
        description:
            'Esta es la posición correcta del objeto, aqui debes soltarlo.'
            '\n Algunos elementos tienen varias hubicaciones.',
        shape: ShapeLightFocus.Circle,
        imagePadding: 50,
        descriptionMaxLines: 4,
      ),
    );
  }
}
