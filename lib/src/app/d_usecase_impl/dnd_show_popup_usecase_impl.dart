import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';

class DnDShowPopuoUseCaseImpl extends SingleKeyValueUseCaseImpl<String, bool>
    implements DnDShowPopupUseCase {
  static const String KEY = "DND_SHOW_POPUP_KEY";
  static const bool DEFAULT_VALUE = true;

  DnDShowPopuoUseCaseImpl()
      : super(
          key: KEY,
          defaultValue: DEFAULT_VALUE,
          repo: KeyValueRepoModule.buildKeyValueRepo(
            converter: BoolKeyValueConverter.converter,
            key: KEY,
          ),
        );

  @override
  bool changeValue() {
    return update(!read());
  }
}

class BoolKeyValueConverter implements SingleKeyValueConverter<String, bool> {
  static final BoolKeyValueConverter converter = BoolKeyValueConverter._();

  BoolKeyValueConverter._();

  @override
  String keyToString(String key) {
    return key;
  }

  @override
  bool stringToValue(String value) {
    return value.toLowerCase() == 'true' ? true : false;
  }

  @override
  String valueToString(bool value) {
    return value ? 'true' : 'false';
  }
}
