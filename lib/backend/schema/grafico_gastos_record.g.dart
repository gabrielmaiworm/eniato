// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grafico_gastos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GraficoGastosRecord> _$graficoGastosRecordSerializer =
    new _$GraficoGastosRecordSerializer();

class _$GraficoGastosRecordSerializer
    implements StructuredSerializer<GraficoGastosRecord> {
  @override
  final Iterable<Type> types = const [
    GraficoGastosRecord,
    _$GraficoGastosRecord
  ];
  @override
  final String wireName = 'GraficoGastosRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GraficoGastosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.alimentacao;
    if (value != null) {
      result
        ..add('alimentacao')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.saude;
    if (value != null) {
      result
        ..add('saude')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lazer;
    if (value != null) {
      result
        ..add('lazer')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.outros;
    if (value != null) {
      result
        ..add('outros')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.investimentos;
    if (value != null) {
      result
        ..add('investimentos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.tipoConsumo;
    if (value != null) {
      result
        ..add('tipoConsumo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tipo;
    if (value != null) {
      result
        ..add('tipo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  GraficoGastosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GraficoGastosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'alimentacao':
          result.alimentacao = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'saude':
          result.saude = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'lazer':
          result.lazer = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'outros':
          result.outros = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'investimentos':
          result.investimentos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'tipoConsumo':
          result.tipoConsumo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tipo':
          result.tipo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GraficoGastosRecord extends GraficoGastosRecord {
  @override
  final int? alimentacao;
  @override
  final int? saude;
  @override
  final int? lazer;
  @override
  final int? outros;
  @override
  final int? investimentos;
  @override
  final String? tipoConsumo;
  @override
  final String? tipo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GraficoGastosRecord(
          [void Function(GraficoGastosRecordBuilder)? updates]) =>
      (new GraficoGastosRecordBuilder()..update(updates))._build();

  _$GraficoGastosRecord._(
      {this.alimentacao,
      this.saude,
      this.lazer,
      this.outros,
      this.investimentos,
      this.tipoConsumo,
      this.tipo,
      this.ffRef})
      : super._();

  @override
  GraficoGastosRecord rebuild(
          void Function(GraficoGastosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GraficoGastosRecordBuilder toBuilder() =>
      new GraficoGastosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GraficoGastosRecord &&
        alimentacao == other.alimentacao &&
        saude == other.saude &&
        lazer == other.lazer &&
        outros == other.outros &&
        investimentos == other.investimentos &&
        tipoConsumo == other.tipoConsumo &&
        tipo == other.tipo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, alimentacao.hashCode), saude.hashCode),
                            lazer.hashCode),
                        outros.hashCode),
                    investimentos.hashCode),
                tipoConsumo.hashCode),
            tipo.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GraficoGastosRecord')
          ..add('alimentacao', alimentacao)
          ..add('saude', saude)
          ..add('lazer', lazer)
          ..add('outros', outros)
          ..add('investimentos', investimentos)
          ..add('tipoConsumo', tipoConsumo)
          ..add('tipo', tipo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GraficoGastosRecordBuilder
    implements Builder<GraficoGastosRecord, GraficoGastosRecordBuilder> {
  _$GraficoGastosRecord? _$v;

  int? _alimentacao;
  int? get alimentacao => _$this._alimentacao;
  set alimentacao(int? alimentacao) => _$this._alimentacao = alimentacao;

  int? _saude;
  int? get saude => _$this._saude;
  set saude(int? saude) => _$this._saude = saude;

  int? _lazer;
  int? get lazer => _$this._lazer;
  set lazer(int? lazer) => _$this._lazer = lazer;

  int? _outros;
  int? get outros => _$this._outros;
  set outros(int? outros) => _$this._outros = outros;

  int? _investimentos;
  int? get investimentos => _$this._investimentos;
  set investimentos(int? investimentos) =>
      _$this._investimentos = investimentos;

  String? _tipoConsumo;
  String? get tipoConsumo => _$this._tipoConsumo;
  set tipoConsumo(String? tipoConsumo) => _$this._tipoConsumo = tipoConsumo;

  String? _tipo;
  String? get tipo => _$this._tipo;
  set tipo(String? tipo) => _$this._tipo = tipo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GraficoGastosRecordBuilder() {
    GraficoGastosRecord._initializeBuilder(this);
  }

  GraficoGastosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alimentacao = $v.alimentacao;
      _saude = $v.saude;
      _lazer = $v.lazer;
      _outros = $v.outros;
      _investimentos = $v.investimentos;
      _tipoConsumo = $v.tipoConsumo;
      _tipo = $v.tipo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GraficoGastosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GraficoGastosRecord;
  }

  @override
  void update(void Function(GraficoGastosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GraficoGastosRecord build() => _build();

  _$GraficoGastosRecord _build() {
    final _$result = _$v ??
        new _$GraficoGastosRecord._(
            alimentacao: alimentacao,
            saude: saude,
            lazer: lazer,
            outros: outros,
            investimentos: investimentos,
            tipoConsumo: tipoConsumo,
            tipo: tipo,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
