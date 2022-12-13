// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banco_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BancoRecord> _$bancoRecordSerializer = new _$BancoRecordSerializer();

class _$BancoRecordSerializer implements StructuredSerializer<BancoRecord> {
  @override
  final Iterable<Type> types = const [BancoRecord, _$BancoRecord];
  @override
  final String wireName = 'BancoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BancoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.codigo;
    if (value != null) {
      result
        ..add('codigo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.razaoSocial;
    if (value != null) {
      result
        ..add('razao_social')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.corBackground;
    if (value != null) {
      result
        ..add('corBackground')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
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
  BancoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BancoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'codigo':
          result.codigo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'razao_social':
          result.razaoSocial = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'corBackground':
          result.corBackground = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
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

class _$BancoRecord extends BancoRecord {
  @override
  final String? logo;
  @override
  final String? codigo;
  @override
  final String? razaoSocial;
  @override
  final Color? corBackground;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BancoRecord([void Function(BancoRecordBuilder)? updates]) =>
      (new BancoRecordBuilder()..update(updates))._build();

  _$BancoRecord._(
      {this.logo,
      this.codigo,
      this.razaoSocial,
      this.corBackground,
      this.ffRef})
      : super._();

  @override
  BancoRecord rebuild(void Function(BancoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BancoRecordBuilder toBuilder() => new BancoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BancoRecord &&
        logo == other.logo &&
        codigo == other.codigo &&
        razaoSocial == other.razaoSocial &&
        corBackground == other.corBackground &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, logo.hashCode), codigo.hashCode),
                razaoSocial.hashCode),
            corBackground.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BancoRecord')
          ..add('logo', logo)
          ..add('codigo', codigo)
          ..add('razaoSocial', razaoSocial)
          ..add('corBackground', corBackground)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BancoRecordBuilder implements Builder<BancoRecord, BancoRecordBuilder> {
  _$BancoRecord? _$v;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _codigo;
  String? get codigo => _$this._codigo;
  set codigo(String? codigo) => _$this._codigo = codigo;

  String? _razaoSocial;
  String? get razaoSocial => _$this._razaoSocial;
  set razaoSocial(String? razaoSocial) => _$this._razaoSocial = razaoSocial;

  Color? _corBackground;
  Color? get corBackground => _$this._corBackground;
  set corBackground(Color? corBackground) =>
      _$this._corBackground = corBackground;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BancoRecordBuilder() {
    BancoRecord._initializeBuilder(this);
  }

  BancoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logo = $v.logo;
      _codigo = $v.codigo;
      _razaoSocial = $v.razaoSocial;
      _corBackground = $v.corBackground;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BancoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BancoRecord;
  }

  @override
  void update(void Function(BancoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BancoRecord build() => _build();

  _$BancoRecord _build() {
    final _$result = _$v ??
        new _$BancoRecord._(
            logo: logo,
            codigo: codigo,
            razaoSocial: razaoSocial,
            corBackground: corBackground,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
