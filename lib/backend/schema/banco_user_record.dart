import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'banco_user_record.g.dart';

abstract class BancoUserRecord
    implements Built<BancoUserRecord, BancoUserRecordBuilder> {
  static Serializer<BancoUserRecord> get serializer =>
      _$bancoUserRecordSerializer;

  String? get agencia;

  String? get conta;

  String? get cpf;

  DocumentReference? get userRef;

  DocumentReference? get bankRef;

  Color? get cor;

  double? get saldo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BancoUserRecordBuilder builder) => builder
    ..agencia = ''
    ..conta = ''
    ..cpf = ''
    ..saldo = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('banco_user');

  static Stream<BancoUserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BancoUserRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BancoUserRecord._();
  factory BancoUserRecord([void Function(BancoUserRecordBuilder) updates]) =
      _$BancoUserRecord;

  static BancoUserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBancoUserRecordData({
  String? agencia,
  String? conta,
  String? cpf,
  DocumentReference? userRef,
  DocumentReference? bankRef,
  Color? cor,
  double? saldo,
}) {
  final firestoreData = serializers.toFirestore(
    BancoUserRecord.serializer,
    BancoUserRecord(
      (b) => b
        ..agencia = agencia
        ..conta = conta
        ..cpf = cpf
        ..userRef = userRef
        ..bankRef = bankRef
        ..cor = cor
        ..saldo = saldo,
    ),
  );

  return firestoreData;
}
