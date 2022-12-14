import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'banco_record.g.dart';

abstract class BancoRecord implements Built<BancoRecord, BancoRecordBuilder> {
  static Serializer<BancoRecord> get serializer => _$bancoRecordSerializer;

  String? get logo;

  String? get codigo;

  @BuiltValueField(wireName: 'razao_social')
  String? get razaoSocial;

  Color? get corBackground;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BancoRecordBuilder builder) => builder
    ..logo = ''
    ..codigo = ''
    ..razaoSocial = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('banco');

  static Stream<BancoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BancoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BancoRecord._();
  factory BancoRecord([void Function(BancoRecordBuilder) updates]) =
      _$BancoRecord;

  static BancoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBancoRecordData({
  String? logo,
  String? codigo,
  String? razaoSocial,
  Color? corBackground,
}) {
  final firestoreData = serializers.toFirestore(
    BancoRecord.serializer,
    BancoRecord(
      (b) => b
        ..logo = logo
        ..codigo = codigo
        ..razaoSocial = razaoSocial
        ..corBackground = corBackground,
    ),
  );

  return firestoreData;
}
