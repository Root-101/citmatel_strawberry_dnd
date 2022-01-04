import 'dart:ui';

import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
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
                _buildItemList(),
              ],
            );
          },
        ),
      ),
    );
  }

  _buildListOfHearts() {
    int countOfColumns = controller.lives;
    return _animatedGridView(
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
    );
  }

  _animatedGridView(int cantOfColumns, List<Widget> children) {
    return AnimationLimiter(
      child: GridView.count(
        childAspectRatio: 1.0,
        padding: const EdgeInsets.all(8.0),
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
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 20.0,
      ),
      height: 240.0,
      child: ClipRRect(
        // For the rounded corners
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: _fadeImage(controller.imageUrl),
      ),
    );
  }

  ///Fade the entranace of the image
  _fadeImage(String imageUrl) {
    return FadeIn(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent, //pa si por si acaso
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: _buildGridView(),
      ),
      duration: Duration(milliseconds: 4000),
      curve: Curves.easeInOutCirc,
    );
  }

  _buildGridView() {
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
            _buildSingleTarget(
              items[index],
            ),
          );
        },
      ),
    );
  }

  _buildSingleTarget(DropTargetItemDomain drop) {
    return DragTarget<DnDSubLevelItemDomain>(
      onWillAccept: (_) => controller.onWillAccept(drop),
      onAccept: (data) => controller.onAccept(drop, data),
      builder: (context, acceptedItems, rejectedItems) => Container(
        color: Colors.red,
        alignment: Alignment.center,
        margin: const EdgeInsets.all(8.0),
        child: drop.item == null
            ? Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(),
                ),
              )
            : Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage(drop.item!.urlImage),
                    //no va a ser null porque lo verifique arriba
                    fit: BoxFit.cover,
                  ),
                ),
              ),
      ),
    );
  }

  _buildItemList() {
    double defaultW = 50;
    double defaultH = 50;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: controller.itemsToDrag
          .map(
            (item) => Draggable<DnDSubLevelItemDomain>(
              data: item,
              feedback: Container(
                width: defaultW,
                height: defaultH,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Image.asset(
                    item.urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              childWhenDragging: Container(
                width: defaultW,
                height: defaultH,
                child: ColorFiltered(
                  colorFilter:
                      ColorFilter.mode(Colors.grey, BlendMode.saturation),
                  child: Image.asset(
                    item.urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              child: Container(
                width: defaultW,
                height: defaultH,
                child: Image.asset(
                  item.urlImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
