import 'package:clean_core/clean_core.dart';

class DnDSubLevelProgressDomain
    extends BasicDomainObject<DnDSubLevelProgressDomain> {
  int id;

  final int dndSubLevelDomainId;

  final int dndLevelDomainId;

  int contPlayedTimes;
  int stars;

  DnDSubLevelProgressDomain({
    required this.dndSubLevelDomainId,
    required this.dndLevelDomainId,
    this.id = 0,
    this.contPlayedTimes = 0,
    this.stars = 0,
  });
}
