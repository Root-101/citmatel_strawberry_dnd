import 'package:clean_core/clean_core.dart';
import 'package:objectbox/objectbox.dart';

@Entity() //flutter pub run build_runner build
class DnDSubLevelProgressEntity extends BasicEntityObject {
  @Id()
  int id;

  int dndSubLevelDomainId;

  int dndLevelDomainId;

  int contPlayedTimes;

  int stars;

  //default construct, DON'T REMOVE
  DnDSubLevelProgressEntity({
    this.dndLevelDomainId = 0,
    this.dndSubLevelDomainId = 0,
    this.id = 0,
    this.contPlayedTimes = 0,
    this.stars = 0,
  });

  //the one to use
  DnDSubLevelProgressEntity.build({
    required this.dndSubLevelDomainId,
    required this.dndLevelDomainId,
    this.id = 0,
    this.contPlayedTimes = 0,
    this.stars = 0,
  });
}
