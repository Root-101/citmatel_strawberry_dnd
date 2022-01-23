import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart'
    hide FadeInAnimation, FadeIn;
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
        StrawberryTutorial.showTutorial(context: context, targets: targets);
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
    return SafeArea(
      child: GetBuilder<DnDSubLevelController>(
        builder: (_) {
          return Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildListOfHearts(),
                  _buildDroppedItems(),
                  _controller.shouldShake
                      ? Shake(
                          child: _buildDraggableItemList(),
                        )
                      : _buildDraggableItemList(),
                ],
              ),
              Align(
                  alignment: Alignment.topCenter,
                  child: StrawberryWidgets.confettiWidget(
                      confettiController: _controller.confettiController)),
            ],
          );
        },
      ),
    );
  }

  _buildListOfHearts() {
    int countOfColumns = _controller.lives;
    return Padding(
      key: _key1,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: _animatedGridView(
        countOfColumns,
        List.generate(
          countOfColumns,
          (int index) {
            return index < _controller.lives - _controller.remainingLives
                ? Swing(
                    key: index == 0 ? _key7 : null,
                    child: Icon(
                      FontAwesomeIcons.heartBroken,
                      color: Colors.red.shade900,
                      size: 50,
                    ),
                  )
                : _buildAnimations(
                    index,
                    countOfColumns,
                    SpinKitPumpingHeart(
                      color: Colors.red.shade900,
                      size: 55,
                    ),
                  );
          },
        ),
      ),
    );
  }

  _animatedGridView(int cantOfColumns, List<Widget> children,
      {double aspectRatio = 1.0}) {
    return AnimationLimiter(
      child: GridView.count(
        childAspectRatio: aspectRatio,
        //padding: const EdgeInsets.all(8.0),
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

  _buildDroppedItems() {
    final double padding = 12.0;
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
              child: _buildDragTargetGridView(),
            ),
          ),
        ),
      ),
    );
  }

  _buildDragTargetGridView() {
    int columns = _controller.columns;

    List<DropTargetItemDomain> items = _controller.itemsDropped;
    return _animatedGridView(
      columns,
      List.generate(
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
        color: Colors.white38,
        dashPattern: const <double>[3, 5],
        child: drop.item == null
            ? Container(
                key: drop.position.column == 0 && drop.position.row == 1
                    ? _key5
                    : Key(""),
              )
            : Container(
                key: drop.position.column == 0 && drop.position.row == 1
                    ? _key6
                    : null,
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

  _buildDraggableItemList() {
    double defaultH = MediaQuery.of(Get.context!).size.height / 8;
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
        fit: BoxFit.cover,
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
          fit: BoxFit.cover,
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
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // Targets for the tutorial.
  void initTargets() {
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
      ),
    );

    targets.add(
      StrawberryTutorial.addTarget(
        identify: "Target Draggable Items",
        keyTarget: _key2,
        shadowColor: Colors.red,
        contentAlign: ContentAlign.top,
        title: 'Elementos arrastrables.',
        description:
            'Debe arrastrar, cada uno de los elementos de esta lista, hacia la posición correcta, en la imagen de arriba, para poder ganar.',
        imagePadding: 50,
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
      ),
    );

    targets.add(
      StrawberryTutorial.addTarget(
        identify: "Target Draggable Item",
        keyTarget: _key4,
        shadowColor: Colors.amber,
        contentAlign: ContentAlign.top,
        title: 'Mono.',
        description:
            'Arrastra el mono hacia la posición que se te indicará a continuación.',
        shape: ShapeLightFocus.Circle,
        imagePadding: 50,
      ),
    );
    targets.add(
      StrawberryTutorial.addMultipleTarget(
        identify: "Target Drop",
        keyTarget: _key5,
        shadowColor: Colors.purple,
        title: 'Lugar del Mono.',
        description:
            'Esta es la posición correcta del mono, aqui debes soltarlo.'
            '\n Algunos elementos tienen varias hubicaciones. Por ejemplo el mono se puede hubicar en varias partes del árbol.',
        shape: ShapeLightFocus.Circle,
        imagePadding: 50,
      ),
    );
  }
}
