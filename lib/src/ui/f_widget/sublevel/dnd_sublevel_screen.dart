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

// ignore: must_be_immutable
class DnDSubLevelScreen extends StatefulWidget {
  static const ROUTE_NAME = "/dnd-sublevel-screen";

  DnDSubLevelScreen({
    required DnDSubLevelDomain subLevelDomain,
  }) : super() {
    Get.put<DnDSubLevelController>(
      DnDSubLevelControllerImpl(
        subLevelDomain: subLevelDomain,
      ),
    );
  }

  @override
  State<DnDSubLevelScreen> createState() => _DnDSubLevelScreenState();
}

class _DnDSubLevelScreenState extends State<DnDSubLevelScreen> {
  late final DnDSubLevelController _controller;

  @override
  void initState() {
    _controller = Get.find();
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
                  _controller.shouldShake()
                      ? Shake(
                          child: _buildDraggableItemList(),
                        )
                      : _buildDraggableItemList(),
                ],
              ),
              Align(
                alignment: Alignment.topCenter,
                child: StrawberryConfettiWidget(
                  confettiController: _controller.confettiController(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  _buildListOfHearts() {
    int countOfColumns = _controller.lives;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: _animatedGridView(
        countOfColumns,
        List.generate(
          countOfColumns,
          (int index) {
            return index < _controller.lives - _controller.remainingLives
                ? Swing(
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
      onAccept: (data) => _controller.onAccept(drop, data),
      builder: (context, acceptedItems, rejectedItems) => DottedBorder(
        color: Colors.white38,
        dashPattern: const <double>[3, 5],
        child: drop.item == null
            ? Container()
            : Container(
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
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: defaultH,
          initialPage: initialPage,
          viewportFraction: 0.25,
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
                  child:
                      _buildDraggableChild(defaultW, defaultH, item.urlImage),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  //child normal en la lista
  _buildDraggableChild(double w, double h, String image) {
    return Container(
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
}
