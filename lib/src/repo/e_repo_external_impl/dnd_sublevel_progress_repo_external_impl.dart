import 'package:citmatel_strawberry_dnd/dnd_exporter.dart';
import 'package:clean_repo_objectbox/clean_objectbox_exporter.dart';

class DnDSubLevelProgressRepoExternalImpl
    extends DefaultObjectBoxCRUDRepositoryExternal<DnDSubLevelProgressEntity>
    implements DnDSubLevelProgressRepoExternal {
  DnDSubLevelProgressRepoExternalImpl(Store store) : super(store);

  @override
  DnDSubLevelProgressEntity? findByAllId(int levelId, int subLevelId) {
    //busco el DnDSubLevelProgressEntity que tenga ese domain y ese sublevel
    final query = box.query(_buildFindQuery(levelId, subLevelId)).build();

    try {
      return query.findUnique(); //devuelvo el unico que debe haber
    } catch (error) {
      print(
          'Error en el findUnique(), deben haberse encontrado multiples instancias');
      //solo lanza excepcion si hay mas de uno
      _clearMultipleProgress(levelId, subLevelId);
    }

    return null;
  }

  //esto tiene varias implementaciones, como poner un unico
  //en la entidad, pero la relacion de unico es entre dos valores
  //entonces habria que hacer un unico en forma de string que los
  //mexcle a los dos, en forma de hash o algo asi y anotar con @unique

  //lo otro es hacer esta validacion cuando se esta insertando
  //por cuentiones de tiempo y facilidad de implementacion
  //se eligio esta opcion, que con un analisis mas profundo
  //puede no ser la ideal
  _clearMultipleProgress(int levelId, int subLevelId) {
    //en caso de que me encuente muchos del mismo tipo
    //busco todos los id's, quito el ultimo de la lista(el mas actualizado)
    //que es con el que me voy a quedar y elimino todos los demas
    //en teoria esto nunca deberia pasar
    List<int> ids = [
      //hago la copia para poder eliminar
      ...box.query(_buildFindQuery(levelId, subLevelId)).build().findIds()
    ];
    print(
        'Trivia: MUCHOS IDs para un solo progress. id\'s = ${ids.length} => ${ids.toString()}');
    if (ids.length > 1) {
      ids.removeAt(ids.length - 1);
    }
    print('Eliminando los id\'s ${ids.toString()}');
    box.removeMany(ids);
  }

  Condition<DnDSubLevelProgressEntity>? _buildFindQuery(
          int levelId, int subLevelId) =>
      DnDSubLevelProgressEntity_.dndLevelDomainId.equals(levelId) &
      DnDSubLevelProgressEntity_.dndSubLevelDomainId.equals(subLevelId);

  @override
  List<DnDSubLevelProgressEntity> findByLevelId(int levelId) {
    //busca todos los DnDSubLevelProgressEntity con el level, o sea, el progreso de todos los subniveles
    final query = box
        .query(DnDSubLevelProgressEntity_.dndLevelDomainId.equals(levelId))
        .build();
    return query.find();
  }
}
