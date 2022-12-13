import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'gasto_record.g.dart';

abstract class GastoRecord implements Built<GastoRecord, GastoRecordBuilder> {
  static Serializer<GastoRecord> get serializer => _$gastoRecordSerializer;

  String? get destinatario;

  double? get valor;

  String? get tipo;

  String? get tipoInvestidor;

  String? get nome;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GastoRecordBuilder builder) => builder
    ..destinatario = ''
    ..valor = 0.0
    ..tipo = ''
    ..tipoInvestidor = ''
    ..nome = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gasto');

  static Stream<GastoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GastoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GastoRecord._();
  factory GastoRecord([void Function(GastoRecordBuilder) updates]) =
      _$GastoRecord;

  static GastoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGastoRecordData({
  String? destinatario,
  double? valor,
  String? tipo,
  String? tipoInvestidor,
  String? nome,
}) {
  final firestoreData = serializers.toFirestore(
    GastoRecord.serializer,
    GastoRecord(
      (g) => g
        ..destinatario = destinatario
        ..valor = valor
        ..tipo = tipo
        ..tipoInvestidor = tipoInvestidor
        ..nome = nome,
    ),
  );

  return firestoreData;
}
