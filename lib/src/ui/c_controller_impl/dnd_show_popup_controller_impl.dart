import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';

class BrainMuteControllerImpl extends DnDShowPopupController {
  DnDShowPopupUseCase muteUseCase;

  BrainMuteControllerImpl({required this.muteUseCase});

  bool changeValue() {
    bool changed = muteUseCase.changeValue();
    update();

    return changed;
  }

  @override
  bool isShowing() => muteUseCase.read();
}
