import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';

class DnDShowPopupControllerImpl extends DnDShowPopupController {
  DnDShowPopupUseCase showPopupUseCase;

  DnDShowPopupControllerImpl({required this.showPopupUseCase});

  bool changeValue() {
    bool changed = showPopupUseCase.changeValue();
    update();

    return changed;
  }

  @override
  bool isShowing() => showPopupUseCase.read();
}
