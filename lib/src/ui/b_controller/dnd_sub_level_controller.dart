import 'package:get/get.dart';

abstract class DnDSubLevelController extends GetxController {
  static const String TAG = "dnd-sub-level-controller";

  int get lives;

  int get remainingLives;
}
