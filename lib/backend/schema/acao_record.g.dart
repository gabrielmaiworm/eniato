// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acao_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AcaoRecord> _$acaoRecordSerializer = new _$AcaoRecordSerializer();

class _$AcaoRecordSerializer implements StructuredSerializer<AcaoRecord> {
  @override
  final Iterable<Type> types = const [AcaoRecord, _$AcaoRecord];
  @override
  final String wireName = 'AcaoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AcaoRecord object,
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
    value = object.foto;
    if (value != null) {
      result
        ..add('foto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preco;
    if (value != null) {
      result
        ..add('preco')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.codigo;
    if (value != null) {
      result
        ..add('codigo')
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
  AcaoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AcaoRecordBuilder();

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
        case 'foto':
          result.foto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'preco':
          result.preco = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'codigo':
          result.codigo = serializers.deserialize(value,
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

class _$AcaoRecord extends AcaoRecord {
  @override
  final String? nome;
  @override
  final String? foto;
  @override
  final double? preco;
  @override
  final String? codigo;
  @override
  final String? tipo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AcaoRecord([void Function(AcaoRecordBuilder)? updates]) =>
      (new AcaoRecordBuilder()..update(updates))._build();

  _$AcaoRecord._(
      {this.nome, this.foto, this.preco, this.codigo, this.tipo, this.ffRef})
      : super._();

  @override
  AcaoRecord rebuild(void Function(AcaoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcaoRecordBuilder toBuilder() => new AcaoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcaoRecord &&
        nome == other.nome &&
        foto == other.foto &&
        preco == other.preco &&
        codigo == other.codigo &&
        tipo == other.tipo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, nome.hashCode), foto.hashCode), preco.hashCode),
                codigo.hashCode),
            tipo.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AcaoRecord')
          ..add('nome', nome)
          ..add('foto', foto)
          ..add('preco', preco)
          ..add('codigo', codigo)
          ..add('tipo', tipo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AcaoRecordBuilder implements Builder<AcaoRecord, AcaoRecordBuilder> {
  _$AcaoRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _foto;
  String? get foto => _$this._foto;
  set foto(String? foto) => _$this._foto = foto;

  double? _preco;
  double? get preco => _$this._preco;
  set preco(double? preco) => _$this._preco = preco;

  String? _codigo;
  String? get codigo => _$this._codigo;
  set codigo(String? codigo) => _$this._codigo = codigo;

  String? _tipo;
  String? get tipo => _$this._tipo;
  set tipo(String? tipo) => _$this._tipo = tipo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AcaoRecordBuilder() {
    AcaoRecord._initializeBuilder(this);
  }

  AcaoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _foto = $v.foto;
      _preco = $v.preco;
      _codigo = $v.codigo;
      _tipo = $v.tipo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcaoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcaoRecord;
  }

  @override
  void update(void Function(AcaoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AcaoRecord build() => _build();

  _$AcaoRecord _build() {
    final _$result = _$v ??
        new _$AcaoRecord._(
            nome: nome,
            foto: foto,
            preco: preco,
            codigo: codigo,
            tipo: tipo,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
