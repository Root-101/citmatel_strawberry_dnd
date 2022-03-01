import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';

abstract class DnDShowPopupUseCase extends SingleKeyValueUseCase<String, bool> {
  bool changeValue();
}
