import 'package:clean_core/clean_core.dart';

class DnDSubLevelProgressDomain
    extends BasicDomainObject<DnDSubLevelProgressDomain> {
  int id;

  final int dndSubLevelId;

  final int dndLevelProgressDomainId;

  int contPlayedTimes;
  int stars;

  DnDSubLevelProgressDomain({
    required this.dndSubLevelId,
    required this.dndLevelProgressDomainId,
    this.id = 0,
    this.contPlayedTimes = 0,
    this.stars = 0,
  });
}
