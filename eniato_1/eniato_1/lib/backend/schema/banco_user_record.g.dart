// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banco_user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BancoUserRecord> _$bancoUserRecordSerializer =
    new _$BancoUserRecordSerializer();

class _$BancoUserRecordSerializer
    implements StructuredSerializer<BancoUserRecord> {
  @override
  final Iterable<Type> types = const [BancoUserRecord, _$BancoUserRecord];
  @override
  final String wireName = 'BancoUserRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BancoUserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.agencia;
    if (value != null) {
      result
        ..add('agencia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.conta;
    if (value != null) {
      result
        ..add('conta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cpf;
    if (value != null) {
      result
        ..add('cpf')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.bankRef;
    if (value != null) {
      result
        ..add('bankRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.cor;
    if (value != null) {
      result
        ..add('cor')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.saldo;
    if (value != null) {
      result
        ..add('saldo')
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
  BancoUserRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BancoUserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'agencia':
          result.agencia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'conta':
          result.conta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cpf':
          result.cpf = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'bankRef':
          result.bankRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'cor':
          result.cor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'saldo':
          result.saldo = serializers.deserialize(value,
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

class _$BancoUserRecord extends BancoUserRecord {
  @override
  final String? agencia;
  @override
  final String? conta;
  @override
  final String? cpf;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final DocumentReference<Object?>? bankRef;
  @override
  final Color? cor;
  @override
  final double? saldo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BancoUserRecord([void Function(BancoUserRecordBuilder)? updates]) =>
      (new BancoUserRecordBuilder()..update(updates))._build();

  _$BancoUserRecord._(
      {this.agencia,
      this.conta,
      this.cpf,
      this.userRef,
      this.bankRef,
      this.cor,
      this.saldo,
      this.ffRef})
      : super._();

  @override
  BancoUserRecord rebuild(void Function(BancoUserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BancoUserRecordBuilder toBuilder() =>
      new BancoUserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BancoUserRecord &&
        agencia == other.agencia &&
        conta == other.conta &&
        cpf == other.cpf &&
        userRef == other.userRef &&
        bankRef == other.bankRef &&
        cor == other.cor &&
        saldo == other.saldo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, agencia.hashCode), conta.hashCode),
                            cpf.hashCode),
                        userRef.hashCode),
                    bankRef.hashCode),
                cor.hashCode),
            saldo.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BancoUserRecord')
          ..add('agencia', agencia)
          ..add('conta', conta)
          ..add('cpf', cpf)
          ..add('userRef', userRef)
          ..add('bankRef', bankRef)
          ..add('cor', cor)
          ..add('saldo', saldo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BancoUserRecordBuilder
    implements Builder<BancoUserRecord, BancoUserRecordBuilder> {
  _$BancoUserRecord? _$v;

  String? _agencia;
  String? get agencia => _$this._agencia;
  set agencia(String? agencia) => _$this._agencia = agencia;

  String? _conta;
  String? get conta => _$this._conta;
  set conta(String? conta) => _$this._conta = conta;

  String? _cpf;
  String? get cpf => _$this._cpf;
  set cpf(String? cpf) => _$this._cpf = cpf;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  DocumentReference<Object?>? _bankRef;
  DocumentReference<Object?>? get bankRef => _$this._bankRef;
  set bankRef(DocumentReference<Object?>? bankRef) => _$this._bankRef = bankRef;

  Color? _cor;
  Color? get cor => _$this._cor;
  set cor(Color? cor) => _$this._cor = cor;

  double? _saldo;
  double? get saldo => _$this._saldo;
  set saldo(double? saldo) => _$this._saldo = saldo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BancoUserRecordBuilder() {
    BancoUserRecord._initializeBuilder(this);
  }

  BancoUserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _agencia = $v.agencia;
      _conta = $v.conta;
      _cpf = $v.cpf;
      _userRef = $v.userRef;
      _bankRef = $v.bankRef;
      _cor = $v.cor;
      _saldo = $v.saldo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BancoUserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BancoUserRecord;
  }

  @override
  void update(void Function(BancoUserRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BancoUserRecord build() => _build();

  _$BancoUserRecord _build() {
    final _$result = _$v ??
        new _$BancoUserRecord._(
            agencia: agencia,
            conta: conta,
            cpf: cpf,
            userRef: userRef,
            bankRef: bankRef,
            cor: cor,
            saldo: saldo,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
