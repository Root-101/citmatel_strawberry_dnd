import 'dart:ui';

import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart'
    hide FadeInAnimation, FadeIn;
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class DnDSubLevelScreen extends GetView<DnDSubLevelController> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<DnDSubLevelController>(
          builder: (_) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildListOfHearts(),
                _buildDroppedItems(),
                _buildDraggableItemList(),
              ],
            );
          },
        ),
      ),
    );
  }

  _buildListOfHearts() {
    int countOfColumns = controller.lives;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: _animatedGridView(
        countOfColumns,
        List.generate(
          countOfColumns,
          (int index) {
            return index < controller.lives - controller.remainingLives
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
                  image: AssetImage(controller.imageUrl),
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
    int columns = controller.columns;

    List<DropTargetItemDomain> items = controller.itemsDropped;
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
      aspectRatio: controller.rows / columns,
    );
  }

  _buildSingleDragTarget(DropTargetItemDomain drop) {
    return DragTarget<DnDSubLevelItemDomain>(
      onWillAccept: (_) => controller.onWillAccept(drop),
      onAccept: (data) => controller.onAccept(drop, data),
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
    double defaultW = 50;
    double defaultH = 50;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: controller.itemsToDrag
          .map(
            (item) => Draggable<DnDSubLevelItemDomain>(
              data: item,
              feedback: _buildDraggableFeedbackItem(
                  defaultW, defaultH, item.urlImage),
              childWhenDragging: _buildDraggableChildWhenDragging(
                  defaultW, defaultH, item.urlImage),
              child: _buildDraggableChild(defaultW, defaultH, item.urlImage),
            ),
          )
          .toList(),
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
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
