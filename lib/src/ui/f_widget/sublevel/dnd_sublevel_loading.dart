import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:citmatel_strawberry_tools/tools_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DnDSubLevelLoading extends GetView<DnDLevelController> {
  final DnDSubLevelDomain subLevelDomain;
  final DnDSubLevelProgressDomain subLevelProgressDomain;
  final bool mute;

  DnDSubLevelLoading({
    required this.subLevelDomain,
    required this.subLevelProgressDomain,
    required this.mute,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PlainSubLevelLoading(
        firstColor: controller
            .themeLooksOfGivenLevel(subLevelProgressDomain)
            .colorStrong,
        secondColor: controller
            .themeLooksOfGivenLevel(subLevelProgressDomain)
            .colorLight,
        firstText: [
          "Tema: ${controller.themeOfGivenLevel(subLevelProgressDomain)}"
        ],
        secondText: ["Nivel: ${subLevelProgressDomain.dndSubLevelDomainId}"],
        subLevel: DnDSubLevelScreen(
          mute: mute,
          subLevelDomain: subLevelDomain,
          subLevelProgressDomain: subLevelProgressDomain,
        ),
      ),
    );
  }
}
