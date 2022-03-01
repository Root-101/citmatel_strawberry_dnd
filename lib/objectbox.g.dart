// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'src/repo/b_entities/entities.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 1219383026597146462),
      name: 'DnDSubLevelProgressEntity',
      lastPropertyId: const IdUid(5, 4734647327001059446),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 861792443472214073),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 547328756912805290),
            name: 'dndSubLevelDomainId',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 6158378576784531486),
            name: 'dndLevelDomainId',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 3859994412617185412),
            name: 'contPlayedTimes',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 4734647327001059446),
            name: 'stars',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(1, 1219383026597146462),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    DnDSubLevelProgressEntity: EntityDefinition<DnDSubLevelProgressEntity>(
        model: _entities[0],
        toOneRelations: (DnDSubLevelProgressEntity object) => [],
        toManyRelations: (DnDSubLevelProgressEntity object) => {},
        getId: (DnDSubLevelProgressEntity object) => object.id,
        setId: (DnDSubLevelProgressEntity object, int id) {
          object.id = id;
        },
        objectToFB: (DnDSubLevelProgressEntity object, fb.Builder fbb) {
          fbb.startTable(6);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.dndSubLevelDomainId);
          fbb.addInt64(2, object.dndLevelDomainId);
          fbb.addInt64(3, object.contPlayedTimes);
          fbb.addInt64(4, object.stars);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = DnDSubLevelProgressEntity(
              dndLevelDomainId:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0),
              dndSubLevelDomainId:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0),
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              contPlayedTimes:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0),
              stars:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 12, 0));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [DnDSubLevelProgressEntity] entity fields to define ObjectBox queries.
class DnDSubLevelProgressEntity_ {
  /// see [DnDSubLevelProgressEntity.id]
  static final id = QueryIntegerProperty<DnDSubLevelProgressEntity>(
      _entities[0].properties[0]);

  /// see [DnDSubLevelProgressEntity.dndSubLevelDomainId]
  static final dndSubLevelDomainId =
      QueryIntegerProperty<DnDSubLevelProgressEntity>(
          _entities[0].properties[1]);

  /// see [DnDSubLevelProgressEntity.dndLevelDomainId]
  static final dndLevelDomainId =
      QueryIntegerProperty<DnDSubLevelProgressEntity>(
          _entities[0].properties[2]);

  /// see [DnDSubLevelProgressEntity.contPlayedTimes]
  static final contPlayedTimes =
      QueryIntegerProperty<DnDSubLevelProgressEntity>(
          _entities[0].properties[3]);

  /// see [DnDSubLevelProgressEntity.stars]
  static final stars = QueryIntegerProperty<DnDSubLevelProgressEntity>(
      _entities[0].properties[4]);
}
