import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'acao_record.g.dart';

abstract class AcaoRecord implements Built<AcaoRecord, AcaoRecordBuilder> {
  static Serializer<AcaoRecord> get serializer => _$acaoRecordSerializer;

  String? get nome;

  String? get foto;

  double? get preco;

  String? get codigo;

  String? get tipo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AcaoRecordBuilder builder) => builder
    ..nome = ''
    ..foto = ''
    ..preco = 0.0
    ..codigo = ''
    ..tipo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('acao');

  static Stream<AcaoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AcaoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AcaoRecord._();
  factory AcaoRecord([void Function(AcaoRecordBuilder) updates]) = _$AcaoRecord;

  static AcaoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAcaoRecordData({
  String? nome,
  String? foto,
  double? preco,
  String? codigo,
  String? tipo,
}) {
  final firestoreData = serializers.toFirestore(
    AcaoRecord.serializer,
    AcaoRecord(
      (a) => a
        ..nome = nome
        ..foto = foto
        ..preco = preco
        ..codigo = codigo
        ..tipo = tipo,
    ),
  );

  return firestoreData;
}
