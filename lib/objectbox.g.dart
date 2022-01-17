// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'src/repo/b_entities/entities.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 7782641939549781418),
      name: 'DnDLevelProgressEntity',
      lastPropertyId: const IdUid(2, 508750262797910372),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 8514054994835219442),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 508750262797910372),
            name: 'dndLevelId',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[
        ModelBacklink(
            name: 'dndSubLevelProgress',
            srcEntity: 'DnDSubLevelProgressEntity',
            srcField: '')
      ]),
  ModelEntity(
      id: const IdUid(2, 7471396029692214794),
      name: 'DnDSubLevelProgressEntity',
      lastPropertyId: const IdUid(4, 490946847768597880),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 5900396288343249655),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6186709881952854201),
            name: 'dndSubLevelId',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 4175071903962226278),
            name: 'dndLevelProgressFKId',
            type: 11,
            flags: 520,
            indexId: const IdUid(1, 1208825187005488828),
            relationTarget: 'DnDLevelProgressEntity'),
        ModelProperty(
            id: const IdUid(4, 490946847768597880),
            name: 'contPlayedTimes',
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
      lastEntityId: const IdUid(2, 7471396029692214794),
      lastIndexId: const IdUid(1, 1208825187005488828),
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
    DnDLevelProgressEntity: EntityDefinition<DnDLevelProgressEntity>(
        model: _entities[0],
        toOneRelations: (DnDLevelProgressEntity object) => [],
        toManyRelations: (DnDLevelProgressEntity object) => {
              RelInfo<DnDSubLevelProgressEntity>.toOneBacklink(
                  3,
                  object.id,
                  (DnDSubLevelProgressEntity srcObject) =>
                      srcObject.dndLevelProgressFK): object.dndSubLevelProgress
            },
        getId: (DnDLevelProgressEntity object) => object.id,
        setId: (DnDLevelProgressEntity object, int id) {
          object.id = id;
        },
        objectToFB: (DnDLevelProgressEntity object, fb.Builder fbb) {
          fbb.startTable(3);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.dndLevelId);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = DnDLevelProgressEntity(
              dndLevelId:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0),
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0));
          InternalToManyAccess.setRelInfo(
              object.dndSubLevelProgress,
              store,
              RelInfo<DnDSubLevelProgressEntity>.toOneBacklink(
                  3,
                  object.id,
                  (DnDSubLevelProgressEntity srcObject) =>
                      srcObject.dndLevelProgressFK),
              store.box<DnDLevelProgressEntity>());
          return object;
        }),
    DnDSubLevelProgressEntity: EntityDefinition<DnDSubLevelProgressEntity>(
        model: _entities[1],
        toOneRelations: (DnDSubLevelProgressEntity object) =>
            [object.dndLevelProgressFK],
        toManyRelations: (DnDSubLevelProgressEntity object) => {},
        getId: (DnDSubLevelProgressEntity object) => object.id,
        setId: (DnDSubLevelProgressEntity object, int id) {
          object.id = id;
        },
        objectToFB: (DnDSubLevelProgressEntity object, fb.Builder fbb) {
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.dndSubLevelId);
          fbb.addInt64(2, object.dndLevelProgressFK.targetId);
          fbb.addInt64(3, object.contPlayedTimes);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = DnDSubLevelProgressEntity(
              dndSubLevelId:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0),
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              contPlayedTimes:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0));
          object.dndLevelProgressFK.targetId =
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0);
          object.dndLevelProgressFK.attach(store);
          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [DnDLevelProgressEntity] entity fields to define ObjectBox queries.
class DnDLevelProgressEntity_ {
  /// see [DnDLevelProgressEntity.id]
  static final id =
      QueryIntegerProperty<DnDLevelProgressEntity>(_entities[0].properties[0]);

  /// see [DnDLevelProgressEntity.dndLevelId]
  static final dndLevelId =
      QueryIntegerProperty<DnDLevelProgressEntity>(_entities[0].properties[1]);
}

/// [DnDSubLevelProgressEntity] entity fields to define ObjectBox queries.
class DnDSubLevelProgressEntity_ {
  /// see [DnDSubLevelProgressEntity.id]
  static final id = QueryIntegerProperty<DnDSubLevelProgressEntity>(
      _entities[1].properties[0]);

  /// see [DnDSubLevelProgressEntity.dndSubLevelId]
  static final dndSubLevelId = QueryIntegerProperty<DnDSubLevelProgressEntity>(
      _entities[1].properties[1]);

  /// see [DnDSubLevelProgressEntity.dndLevelProgressFK]
  static final dndLevelProgressFK =
      QueryRelationToOne<DnDSubLevelProgressEntity, DnDLevelProgressEntity>(
          _entities[1].properties[2]);

  /// see [DnDSubLevelProgressEntity.contPlayedTimes]
  static final contPlayedTimes =
      QueryIntegerProperty<DnDSubLevelProgressEntity>(
          _entities[1].properties[3]);
}
