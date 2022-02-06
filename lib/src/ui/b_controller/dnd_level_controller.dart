import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class DnDLevelController extends GetxController {
  List<DnDLevelDomain> findAll();

  DnDLevelDomain findBy(int keyId);

  int count();

  //devuelve la cantidad de estrellas maximo del nivel
  int maxStars(DnDLevelDomain levelDomain);

  //devuelve la cantidad de estrellas ganadas del nivel
  int winedStars(DnDLevelDomain levelDomain);

  //devuelve la cantidad de estrellas maximo de todos los niveles
  int maxStarsAll();

  //devuelve la cantidad de estrellas ganadas de todos los nivel
  int winedStarsAll();

  //check if all sublevels are completed with at most 1 stars
  bool winedLevel(DnDLevelDomain levelDomain);

  Widget randomSubLevel();

  Widget randomSubLevelOf(DnDLevelDomain level);
}
