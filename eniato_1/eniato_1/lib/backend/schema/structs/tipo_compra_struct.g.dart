// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tipo_compra_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TipoCompraStruct> _$tipoCompraStructSerializer =
    new _$TipoCompraStructSerializer();

class _$TipoCompraStructSerializer
    implements StructuredSerializer<TipoCompraStruct> {
  @override
  final Iterable<Type> types = const [TipoCompraStruct, _$TipoCompraStruct];
  @override
  final String wireName = 'TipoCompraStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, TipoCompraStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.alimentacao;
    if (value != null) {
      result
        ..add('Alimentacao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.saude;
    if (value != null) {
      result
        ..add('Saude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lazer;
    if (value != null) {
      result
        ..add('Lazer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.investimentos;
    if (value != null) {
      result
        ..add('Investimentos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.outros;
    if (value != null) {
      result
        ..add('Outros')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TipoCompraStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TipoCompraStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Alimentacao':
          result.alimentacao = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Saude':
          result.saude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Lazer':
          result.lazer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Investimentos':
          result.investimentos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Outros':
          result.outros = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$TipoCompraStruct extends TipoCompraStruct {
  @override
  final String? alimentacao;
  @override
  final String? saude;
  @override
  final String? lazer;
  @override
  final String? investimentos;
  @override
  final String? outros;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$TipoCompraStruct(
          [void Function(TipoCompraStructBuilder)? updates]) =>
      (new TipoCompraStructBuilder()..update(updates))._build();

  _$TipoCompraStruct._(
      {this.alimentacao,
      this.saude,
      this.lazer,
      this.investimentos,
      this.outros,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'TipoCompraStruct', 'firestoreUtilData');
  }

  @override
  TipoCompraStruct rebuild(void Function(TipoCompraStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TipoCompraStructBuilder toBuilder() =>
      new TipoCompraStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TipoCompraStruct &&
        alimentacao == other.alimentacao &&
        saude == other.saude &&
        lazer == other.lazer &&
        investimentos == other.investimentos &&
        outros == other.outros &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, alimentacao.hashCode), saude.hashCode),
                    lazer.hashCode),
                investimentos.hashCode),
            outros.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TipoCompraStruct')
          ..add('alimentacao', alimentacao)
          ..add('saude', saude)
          ..add('lazer', lazer)
          ..add('investimentos', investimentos)
          ..add('outros', outros)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class TipoCompraStructBuilder
    implements Builder<TipoCompraStruct, TipoCompraStructBuilder> {
  _$TipoCompraStruct? _$v;

  String? _alimentacao;
  String? get alimentacao => _$this._alimentacao;
  set alimentacao(String? alimentacao) => _$this._alimentacao = alimentacao;

  String? _saude;
  String? get saude => _$this._saude;
  set saude(String? saude) => _$this._saude = saude;

  String? _lazer;
  String? get lazer => _$this._lazer;
  set lazer(String? lazer) => _$this._lazer = lazer;

  String? _investimentos;
  String? get investimentos => _$this._investimentos;
  set investimentos(String? investimentos) =>
      _$this._investimentos = investimentos;

  String? _outros;
  String? get outros => _$this._outros;
  set outros(String? outros) => _$this._outros = outros;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  TipoCompraStructBuilder() {
    TipoCompraStruct._initializeBuilder(this);
  }

  TipoCompraStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alimentacao = $v.alimentacao;
      _saude = $v.saude;
      _lazer = $v.lazer;
      _investimentos = $v.investimentos;
      _outros = $v.outros;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TipoCompraStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TipoCompraStruct;
  }

  @override
  void update(void Function(TipoCompraStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TipoCompraStruct build() => _build();

  _$TipoCompraStruct _build() {
    final _$result = _$v ??
        new _$TipoCompraStruct._(
            alimentacao: alimentacao,
            saude: saude,
            lazer: lazer,
            investimentos: investimentos,
            outros: outros,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'TipoCompraStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
