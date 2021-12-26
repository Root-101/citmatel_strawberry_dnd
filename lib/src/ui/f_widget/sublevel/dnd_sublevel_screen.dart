import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
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
    return SafeArea(
      child: GetBuilder<DnDSubLevelController>(
        builder: (_) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildListOfHearts(),
              _buildImageCard(),
              //_buildWord(),
            ],
          );
        },
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
        ));
  }

  _buildAnimations(int index, int countOfColumns, Widget widget) {
    return AnimationConfiguration.staggeredGrid(
      columnCount: 6,
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

  _emptyCard(String text, Color decorationColor, Color shadowColor) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: decorationColor,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: shadowColor,
            blurRadius: 6.0,
            offset: Offset(0.0, 4.0),
          ),
        ],
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }

  _buildImageCard() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 20.0,
      ),
      height: 240.0,
      child: ClipRRect(
        // For the rounded corners
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: _fadeImage(""),
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
    return Text("Grid view con las posiciones");
  }
}
