import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'acao_user_record.g.dart';

abstract class AcaoUserRecord
    implements Built<AcaoUserRecord, AcaoUserRecordBuilder> {
  static Serializer<AcaoUserRecord> get serializer =>
      _$acaoUserRecordSerializer;

  String? get nome;

  int? get quantidade;

  @BuiltValueField(wireName: 'user_ref')
  DocumentReference? get userRef;

  @BuiltValueField(wireName: 'acao_ref')
  DocumentReference? get acaoRef;

  double? get valor;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AcaoUserRecordBuilder builder) => builder
    ..nome = ''
    ..quantidade = 0
    ..valor = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('acao_user');

  static Stream<AcaoUserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AcaoUserRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AcaoUserRecord._();
  factory AcaoUserRecord([void Function(AcaoUserRecordBuilder) updates]) =
      _$AcaoUserRecord;

  static AcaoUserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAcaoUserRecordData({
  String? nome,
  int? quantidade,
  DocumentReference? userRef,
  DocumentReference? acaoRef,
  double? valor,
}) {
  final firestoreData = serializers.toFirestore(
    AcaoUserRecord.serializer,
    AcaoUserRecord(
      (a) => a
        ..nome = nome
        ..quantidade = quantidade
        ..userRef = userRef
        ..acaoRef = acaoRef
        ..valor = valor,
    ),
  );

  return firestoreData;
}
