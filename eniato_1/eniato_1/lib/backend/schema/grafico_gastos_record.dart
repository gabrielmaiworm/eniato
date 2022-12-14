import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'grafico_gastos_record.g.dart';

abstract class GraficoGastosRecord
    implements Built<GraficoGastosRecord, GraficoGastosRecordBuilder> {
  static Serializer<GraficoGastosRecord> get serializer =>
      _$graficoGastosRecordSerializer;

  int? get alimentacao;

  int? get saude;

  int? get lazer;

  int? get outros;

  int? get investimentos;

  String? get tipoConsumo;

  String? get tipo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GraficoGastosRecordBuilder builder) => builder
    ..alimentacao = 0
    ..saude = 0
    ..lazer = 0
    ..outros = 0
    ..investimentos = 0
    ..tipoConsumo = ''
    ..tipo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('grafico_gastos');

  static Stream<GraficoGastosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GraficoGastosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GraficoGastosRecord._();
  factory GraficoGastosRecord(
          [void Function(GraficoGastosRecordBuilder) updates]) =
      _$GraficoGastosRecord;

  static GraficoGastosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGraficoGastosRecordData({
  int? alimentacao,
  int? saude,
  int? lazer,
  int? outros,
  int? investimentos,
  String? tipoConsumo,
  String? tipo,
}) {
  final firestoreData = serializers.toFirestore(
    GraficoGastosRecord.serializer,
    GraficoGastosRecord(
      (g) => g
        ..alimentacao = alimentacao
        ..saude = saude
        ..lazer = lazer
        ..outros = outros
        ..investimentos = investimentos
        ..tipoConsumo = tipoConsumo
        ..tipo = tipo,
    ),
  );

  return firestoreData;
}
