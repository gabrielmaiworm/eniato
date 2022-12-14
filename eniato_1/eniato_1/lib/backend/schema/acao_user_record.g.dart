// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acao_user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AcaoUserRecord> _$acaoUserRecordSerializer =
    new _$AcaoUserRecordSerializer();

class _$AcaoUserRecordSerializer
    implements StructuredSerializer<AcaoUserRecord> {
  @override
  final Iterable<Type> types = const [AcaoUserRecord, _$AcaoUserRecord];
  @override
  final String wireName = 'AcaoUserRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AcaoUserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quantidade;
    if (value != null) {
      result
        ..add('quantidade')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('user_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.acaoRef;
    if (value != null) {
      result
        ..add('acao_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.valor;
    if (value != null) {
      result
        ..add('valor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AcaoUserRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AcaoUserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'quantidade':
          result.quantidade = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'user_ref':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'acao_ref':
          result.acaoRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'valor':
          result.valor = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AcaoUserRecord extends AcaoUserRecord {
  @override
  final String? nome;
  @override
  final int? quantidade;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final DocumentReference<Object?>? acaoRef;
  @override
  final double? valor;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AcaoUserRecord([void Function(AcaoUserRecordBuilder)? updates]) =>
      (new AcaoUserRecordBuilder()..update(updates))._build();

  _$AcaoUserRecord._(
      {this.nome,
      this.quantidade,
      this.userRef,
      this.acaoRef,
      this.valor,
      this.ffRef})
      : super._();

  @override
  AcaoUserRecord rebuild(void Function(AcaoUserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcaoUserRecordBuilder toBuilder() =>
      new AcaoUserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcaoUserRecord &&
        nome == other.nome &&
        quantidade == other.quantidade &&
        userRef == other.userRef &&
        acaoRef == other.acaoRef &&
        valor == other.valor &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, nome.hashCode), quantidade.hashCode),
                    userRef.hashCode),
                acaoRef.hashCode),
            valor.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AcaoUserRecord')
          ..add('nome', nome)
          ..add('quantidade', quantidade)
          ..add('userRef', userRef)
          ..add('acaoRef', acaoRef)
          ..add('valor', valor)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AcaoUserRecordBuilder
    implements Builder<AcaoUserRecord, AcaoUserRecordBuilder> {
  _$AcaoUserRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  int? _quantidade;
  int? get quantidade => _$this._quantidade;
  set quantidade(int? quantidade) => _$this._quantidade = quantidade;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  DocumentReference<Object?>? _acaoRef;
  DocumentReference<Object?>? get acaoRef => _$this._acaoRef;
  set acaoRef(DocumentReference<Object?>? acaoRef) => _$this._acaoRef = acaoRef;

  double? _valor;
  double? get valor => _$this._valor;
  set valor(double? valor) => _$this._valor = valor;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AcaoUserRecordBuilder() {
    AcaoUserRecord._initializeBuilder(this);
  }

  AcaoUserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _quantidade = $v.quantidade;
      _userRef = $v.userRef;
      _acaoRef = $v.acaoRef;
      _valor = $v.valor;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcaoUserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcaoUserRecord;
  }

  @override
  void update(void Function(AcaoUserRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcaoUserRecord build() => _build();

  _$AcaoUserRecord _build() {
    final _$result = _$v ??
        new _$AcaoUserRecord._(
            nome: nome,
            quantidade: quantidade,
            userRef: userRef,
            acaoRef: acaoRef,
            valor: valor,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
