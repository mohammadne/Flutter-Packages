// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'audio_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AudioState _$AudioStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'none':
      return None.fromJson(json);
    case 'connecting':
      return Connecting.fromJson(json);
    case 'playing':
      return Playing.fromJson(json);
    case 'paused':
      return Paused.fromJson(json);
    case 'completed':
      return Completed.fromJson(json);
    case 'stopped':
      return Stopped.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$AudioStateTearOff {
  const _$AudioStateTearOff();

  None none() {
    return const None();
  }

  Connecting connecting() {
    return const Connecting();
  }

  Playing playing() {
    return const Playing();
  }

  Paused paused() {
    return const Paused();
  }

  Completed completed() {
    return const Completed();
  }

  Stopped stopped() {
    return const Stopped();
  }
}

// ignore: unused_element
const $AudioState = _$AudioStateTearOff();

mixin _$AudioState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result connecting(),
    @required Result playing(),
    @required Result paused(),
    @required Result completed(),
    @required Result stopped(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result connecting(),
    Result playing(),
    Result paused(),
    Result completed(),
    Result stopped(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(None value),
    @required Result connecting(Connecting value),
    @required Result playing(Playing value),
    @required Result paused(Paused value),
    @required Result completed(Completed value),
    @required Result stopped(Stopped value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(None value),
    Result connecting(Connecting value),
    Result playing(Playing value),
    Result paused(Paused value),
    Result completed(Completed value),
    Result stopped(Stopped value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $AudioStateCopyWith<$Res> {
  factory $AudioStateCopyWith(
          AudioState value, $Res Function(AudioState) then) =
      _$AudioStateCopyWithImpl<$Res>;
}

class _$AudioStateCopyWithImpl<$Res> implements $AudioStateCopyWith<$Res> {
  _$AudioStateCopyWithImpl(this._value, this._then);

  final AudioState _value;
  // ignore: unused_field
  final $Res Function(AudioState) _then;
}

abstract class $NoneCopyWith<$Res> {
  factory $NoneCopyWith(None value, $Res Function(None) then) =
      _$NoneCopyWithImpl<$Res>;
}

class _$NoneCopyWithImpl<$Res> extends _$AudioStateCopyWithImpl<$Res>
    implements $NoneCopyWith<$Res> {
  _$NoneCopyWithImpl(None _value, $Res Function(None) _then)
      : super(_value, (v) => _then(v as None));

  @override
  None get _value => super._value as None;
}

@JsonSerializable()
class _$None implements None {
  const _$None();

  factory _$None.fromJson(Map<String, dynamic> json) => _$_$NoneFromJson(json);

  @override
  String toString() {
    return 'AudioState.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result connecting(),
    @required Result playing(),
    @required Result paused(),
    @required Result completed(),
    @required Result stopped(),
  }) {
    assert(none != null);
    assert(connecting != null);
    assert(playing != null);
    assert(paused != null);
    assert(completed != null);
    assert(stopped != null);
    return none();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result connecting(),
    Result playing(),
    Result paused(),
    Result completed(),
    Result stopped(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(None value),
    @required Result connecting(Connecting value),
    @required Result playing(Playing value),
    @required Result paused(Paused value),
    @required Result completed(Completed value),
    @required Result stopped(Stopped value),
  }) {
    assert(none != null);
    assert(connecting != null);
    assert(playing != null);
    assert(paused != null);
    assert(completed != null);
    assert(stopped != null);
    return none(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(None value),
    Result connecting(Connecting value),
    Result playing(Playing value),
    Result paused(Paused value),
    Result completed(Completed value),
    Result stopped(Stopped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$NoneToJson(this)..['runtimeType'] = 'none';
  }
}

abstract class None implements AudioState {
  const factory None() = _$None;

  factory None.fromJson(Map<String, dynamic> json) = _$None.fromJson;
}

abstract class $ConnectingCopyWith<$Res> {
  factory $ConnectingCopyWith(
          Connecting value, $Res Function(Connecting) then) =
      _$ConnectingCopyWithImpl<$Res>;
}

class _$ConnectingCopyWithImpl<$Res> extends _$AudioStateCopyWithImpl<$Res>
    implements $ConnectingCopyWith<$Res> {
  _$ConnectingCopyWithImpl(Connecting _value, $Res Function(Connecting) _then)
      : super(_value, (v) => _then(v as Connecting));

  @override
  Connecting get _value => super._value as Connecting;
}

@JsonSerializable()
class _$Connecting implements Connecting {
  const _$Connecting();

  factory _$Connecting.fromJson(Map<String, dynamic> json) =>
      _$_$ConnectingFromJson(json);

  @override
  String toString() {
    return 'AudioState.connecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Connecting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result connecting(),
    @required Result playing(),
    @required Result paused(),
    @required Result completed(),
    @required Result stopped(),
  }) {
    assert(none != null);
    assert(connecting != null);
    assert(playing != null);
    assert(paused != null);
    assert(completed != null);
    assert(stopped != null);
    return connecting();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result connecting(),
    Result playing(),
    Result paused(),
    Result completed(),
    Result stopped(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connecting != null) {
      return connecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(None value),
    @required Result connecting(Connecting value),
    @required Result playing(Playing value),
    @required Result paused(Paused value),
    @required Result completed(Completed value),
    @required Result stopped(Stopped value),
  }) {
    assert(none != null);
    assert(connecting != null);
    assert(playing != null);
    assert(paused != null);
    assert(completed != null);
    assert(stopped != null);
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(None value),
    Result connecting(Connecting value),
    Result playing(Playing value),
    Result paused(Paused value),
    Result completed(Completed value),
    Result stopped(Stopped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ConnectingToJson(this)..['runtimeType'] = 'connecting';
  }
}

abstract class Connecting implements AudioState {
  const factory Connecting() = _$Connecting;

  factory Connecting.fromJson(Map<String, dynamic> json) =
      _$Connecting.fromJson;
}

abstract class $PlayingCopyWith<$Res> {
  factory $PlayingCopyWith(Playing value, $Res Function(Playing) then) =
      _$PlayingCopyWithImpl<$Res>;
}

class _$PlayingCopyWithImpl<$Res> extends _$AudioStateCopyWithImpl<$Res>
    implements $PlayingCopyWith<$Res> {
  _$PlayingCopyWithImpl(Playing _value, $Res Function(Playing) _then)
      : super(_value, (v) => _then(v as Playing));

  @override
  Playing get _value => super._value as Playing;
}

@JsonSerializable()
class _$Playing implements Playing {
  const _$Playing();

  factory _$Playing.fromJson(Map<String, dynamic> json) =>
      _$_$PlayingFromJson(json);

  @override
  String toString() {
    return 'AudioState.playing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Playing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result connecting(),
    @required Result playing(),
    @required Result paused(),
    @required Result completed(),
    @required Result stopped(),
  }) {
    assert(none != null);
    assert(connecting != null);
    assert(playing != null);
    assert(paused != null);
    assert(completed != null);
    assert(stopped != null);
    return playing();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result connecting(),
    Result playing(),
    Result paused(),
    Result completed(),
    Result stopped(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (playing != null) {
      return playing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(None value),
    @required Result connecting(Connecting value),
    @required Result playing(Playing value),
    @required Result paused(Paused value),
    @required Result completed(Completed value),
    @required Result stopped(Stopped value),
  }) {
    assert(none != null);
    assert(connecting != null);
    assert(playing != null);
    assert(paused != null);
    assert(completed != null);
    assert(stopped != null);
    return playing(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(None value),
    Result connecting(Connecting value),
    Result playing(Playing value),
    Result paused(Paused value),
    Result completed(Completed value),
    Result stopped(Stopped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$PlayingToJson(this)..['runtimeType'] = 'playing';
  }
}

abstract class Playing implements AudioState {
  const factory Playing() = _$Playing;

  factory Playing.fromJson(Map<String, dynamic> json) = _$Playing.fromJson;
}

abstract class $PausedCopyWith<$Res> {
  factory $PausedCopyWith(Paused value, $Res Function(Paused) then) =
      _$PausedCopyWithImpl<$Res>;
}

class _$PausedCopyWithImpl<$Res> extends _$AudioStateCopyWithImpl<$Res>
    implements $PausedCopyWith<$Res> {
  _$PausedCopyWithImpl(Paused _value, $Res Function(Paused) _then)
      : super(_value, (v) => _then(v as Paused));

  @override
  Paused get _value => super._value as Paused;
}

@JsonSerializable()
class _$Paused implements Paused {
  const _$Paused();

  factory _$Paused.fromJson(Map<String, dynamic> json) =>
      _$_$PausedFromJson(json);

  @override
  String toString() {
    return 'AudioState.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Paused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result connecting(),
    @required Result playing(),
    @required Result paused(),
    @required Result completed(),
    @required Result stopped(),
  }) {
    assert(none != null);
    assert(connecting != null);
    assert(playing != null);
    assert(paused != null);
    assert(completed != null);
    assert(stopped != null);
    return paused();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result connecting(),
    Result playing(),
    Result paused(),
    Result completed(),
    Result stopped(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(None value),
    @required Result connecting(Connecting value),
    @required Result playing(Playing value),
    @required Result paused(Paused value),
    @required Result completed(Completed value),
    @required Result stopped(Stopped value),
  }) {
    assert(none != null);
    assert(connecting != null);
    assert(playing != null);
    assert(paused != null);
    assert(completed != null);
    assert(stopped != null);
    return paused(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(None value),
    Result connecting(Connecting value),
    Result playing(Playing value),
    Result paused(Paused value),
    Result completed(Completed value),
    Result stopped(Stopped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$PausedToJson(this)..['runtimeType'] = 'paused';
  }
}

abstract class Paused implements AudioState {
  const factory Paused() = _$Paused;

  factory Paused.fromJson(Map<String, dynamic> json) = _$Paused.fromJson;
}

abstract class $CompletedCopyWith<$Res> {
  factory $CompletedCopyWith(Completed value, $Res Function(Completed) then) =
      _$CompletedCopyWithImpl<$Res>;
}

class _$CompletedCopyWithImpl<$Res> extends _$AudioStateCopyWithImpl<$Res>
    implements $CompletedCopyWith<$Res> {
  _$CompletedCopyWithImpl(Completed _value, $Res Function(Completed) _then)
      : super(_value, (v) => _then(v as Completed));

  @override
  Completed get _value => super._value as Completed;
}

@JsonSerializable()
class _$Completed implements Completed {
  const _$Completed();

  factory _$Completed.fromJson(Map<String, dynamic> json) =>
      _$_$CompletedFromJson(json);

  @override
  String toString() {
    return 'AudioState.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Completed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result connecting(),
    @required Result playing(),
    @required Result paused(),
    @required Result completed(),
    @required Result stopped(),
  }) {
    assert(none != null);
    assert(connecting != null);
    assert(playing != null);
    assert(paused != null);
    assert(completed != null);
    assert(stopped != null);
    return completed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result connecting(),
    Result playing(),
    Result paused(),
    Result completed(),
    Result stopped(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(None value),
    @required Result connecting(Connecting value),
    @required Result playing(Playing value),
    @required Result paused(Paused value),
    @required Result completed(Completed value),
    @required Result stopped(Stopped value),
  }) {
    assert(none != null);
    assert(connecting != null);
    assert(playing != null);
    assert(paused != null);
    assert(completed != null);
    assert(stopped != null);
    return completed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(None value),
    Result connecting(Connecting value),
    Result playing(Playing value),
    Result paused(Paused value),
    Result completed(Completed value),
    Result stopped(Stopped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CompletedToJson(this)..['runtimeType'] = 'completed';
  }
}

abstract class Completed implements AudioState {
  const factory Completed() = _$Completed;

  factory Completed.fromJson(Map<String, dynamic> json) = _$Completed.fromJson;
}

abstract class $StoppedCopyWith<$Res> {
  factory $StoppedCopyWith(Stopped value, $Res Function(Stopped) then) =
      _$StoppedCopyWithImpl<$Res>;
}

class _$StoppedCopyWithImpl<$Res> extends _$AudioStateCopyWithImpl<$Res>
    implements $StoppedCopyWith<$Res> {
  _$StoppedCopyWithImpl(Stopped _value, $Res Function(Stopped) _then)
      : super(_value, (v) => _then(v as Stopped));

  @override
  Stopped get _value => super._value as Stopped;
}

@JsonSerializable()
class _$Stopped implements Stopped {
  const _$Stopped();

  factory _$Stopped.fromJson(Map<String, dynamic> json) =>
      _$_$StoppedFromJson(json);

  @override
  String toString() {
    return 'AudioState.stopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Stopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result connecting(),
    @required Result playing(),
    @required Result paused(),
    @required Result completed(),
    @required Result stopped(),
  }) {
    assert(none != null);
    assert(connecting != null);
    assert(playing != null);
    assert(paused != null);
    assert(completed != null);
    assert(stopped != null);
    return stopped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result connecting(),
    Result playing(),
    Result paused(),
    Result completed(),
    Result stopped(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopped != null) {
      return stopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(None value),
    @required Result connecting(Connecting value),
    @required Result playing(Playing value),
    @required Result paused(Paused value),
    @required Result completed(Completed value),
    @required Result stopped(Stopped value),
  }) {
    assert(none != null);
    assert(connecting != null);
    assert(playing != null);
    assert(paused != null);
    assert(completed != null);
    assert(stopped != null);
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(None value),
    Result connecting(Connecting value),
    Result playing(Playing value),
    Result paused(Paused value),
    Result completed(Completed value),
    Result stopped(Stopped value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$StoppedToJson(this)..['runtimeType'] = 'stopped';
  }
}

abstract class Stopped implements AudioState {
  const factory Stopped() = _$Stopped;

  factory Stopped.fromJson(Map<String, dynamic> json) = _$Stopped.fromJson;
}
