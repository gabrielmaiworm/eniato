import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'tipo_compra_struct.g.dart';

abstract class TipoCompraStruct
    implements Built<TipoCompraStruct, TipoCompraStructBuilder> {
  static Serializer<TipoCompraStruct> get serializer =>
      _$tipoCompraStructSerializer;

  @BuiltValueField(wireName: 'Alimentacao')
  String? get alimentacao;

  @BuiltValueField(wireName: 'Saude')
  String? get saude;

  @BuiltValueField(wireName: 'Lazer')
  String? get lazer;

  @BuiltValueField(wireName: 'Investimentos')
  String? get investimentos;

  @BuiltValueField(wireName: 'Outros')
  String? get outros;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(TipoCompraStructBuilder builder) => builder
    ..alimentacao = ''
    ..saude = ''
    ..lazer = ''
    ..investimentos = ''
    ..outros = ''
    ..firestoreUtilData = FirestoreUtilData();

  TipoCompraStruct._();
  factory TipoCompraStruct([void Function(TipoCompraStructBuilder) updates]) =
      _$TipoCompraStruct;
}

TipoCompraStruct createTipoCompraStruct({
  String? alimentacao,
  String? saude,
  String? lazer,
  String? investimentos,
  String? outros,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TipoCompraStruct(
      (t) => t
        ..alimentacao = alimentacao
        ..saude = saude
        ..lazer = lazer
        ..investimentos = investimentos
        ..outros = outros
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

TipoCompraStruct? updateTipoCompraStruct(
  TipoCompraStruct? tipoCompra, {
  bool clearUnsetFields = true,
}) =>
    tipoCompra != null
        ? (tipoCompra.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addTipoCompraStructData(
  Map<String, dynamic> firestoreData,
  TipoCompraStruct? tipoCompra,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tipoCompra == null) {
    return;
  }
  if (tipoCompra.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && tipoCompra.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tipoCompraData = getTipoCompraFirestoreData(tipoCompra, forFieldValue);
  final nestedData = tipoCompraData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = tipoCompra.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getTipoCompraFirestoreData(
  TipoCompraStruct? tipoCompra, [
  bool forFieldValue = false,
]) {
  if (tipoCompra == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(TipoCompraStruct.serializer, tipoCompra);

  // Add any Firestore field values
  tipoCompra.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTipoCompraListFirestoreData(
  List<TipoCompraStruct>? tipoCompras,
) =>
    tipoCompras?.map((t) => getTipoCompraFirestoreData(t, true)).toList() ?? [];
