// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gasto_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GastoRecord> _$gastoRecordSerializer = new _$GastoRecordSerializer();

class _$GastoRecordSerializer implements StructuredSerializer<GastoRecord> {
  @override
  final Iterable<Type> types = const [GastoRecord, _$GastoRecord];
  @override
  final String wireName = 'GastoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GastoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.destinatario;
    if (value != null) {
      result
        ..add('destinatario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.valor;
    if (value != null) {
      result
        ..add('valor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tipo;
    if (value != null) {
      result
        ..add('tipo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tipoInvestidor;
    if (value != null) {
      result
        ..add('tipoInvestidor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
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
  GastoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GastoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'destinatario':
          result.destinatario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'valor':
          result.valor = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'tipo':
          result.tipo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tipoInvestidor':
          result.tipoInvestidor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nome':
          result.nome = serializers.deserialize(value,
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

class _$GastoRecord extends GastoRecord {
  @override
  final String? destinatario;
  @override
  final double? valor;
  @override
  final String? tipo;
  @override
  final String? tipoInvestidor;
  @override
  final String? nome;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GastoRecord([void Function(GastoRecordBuilder)? updates]) =>
      (new GastoRecordBuilder()..update(updates))._build();

  _$GastoRecord._(
      {this.destinatario,
      this.valor,
      this.tipo,
      this.tipoInvestidor,
      this.nome,
      this.ffRef})
      : super._();

  @override
  GastoRecord rebuild(void Function(GastoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GastoRecordBuilder toBuilder() => new GastoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GastoRecord &&
        destinatario == other.destinatario &&
        valor == other.valor &&
        tipo == other.tipo &&
        tipoInvestidor == other.tipoInvestidor &&
        nome == other.nome &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, destinatario.hashCode), valor.hashCode),
                    tipo.hashCode),
                tipoInvestidor.hashCode),
            nome.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GastoRecord')
          ..add('destinatario', destinatario)
          ..add('valor', valor)
          ..add('tipo', tipo)
          ..add('tipoInvestidor', tipoInvestidor)
          ..add('nome', nome)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GastoRecordBuilder implements Builder<GastoRecord, GastoRecordBuilder> {
  _$GastoRecord? _$v;

  String? _destinatario;
  String? get destinatario => _$this._destinatario;
  set destinatario(String? destinatario) => _$this._destinatario = destinatario;

  double? _valor;
  double? get valor => _$this._valor;
  set valor(double? valor) => _$this._valor = valor;

  String? _tipo;
  String? get tipo => _$this._tipo;
  set tipo(String? tipo) => _$this._tipo = tipo;

  String? _tipoInvestidor;
  String? get tipoInvestidor => _$this._tipoInvestidor;
  set tipoInvestidor(String? tipoInvestidor) =>
      _$this._tipoInvestidor = tipoInvestidor;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GastoRecordBuilder() {
    GastoRecord._initializeBuilder(this);
  }

  GastoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destinatario = $v.destinatario;
      _valor = $v.valor;
      _tipo = $v.tipo;
      _tipoInvestidor = $v.tipoInvestidor;
      _nome = $v.nome;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GastoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GastoRecord;
  }

  @override
  void update(void Function(GastoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GastoRecord build() => _build();

  _$GastoRecord _build() {
    final _$result = _$v ??
        new _$GastoRecord._(
            destinatario: destinatario,
            valor: valor,
            tipo: tipo,
            tipoInvestidor: tipoInvestidor,
            nome: nome,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
