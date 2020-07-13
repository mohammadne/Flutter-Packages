// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fl_audio_processing_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FlAudioProcessingState _$FlAudioProcessingStateFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'none':
      return _None.fromJson(json);
    case 'waiting':
      return _Waiting.fromJson(json);
    case 'ready':
      return _Ready.fromJson(json);
    case 'buffering':
      return _Buffering.fromJson(json);
    case 'fastForwarding':
      return _FastForwarding.fromJson(json);
    case 'rewinding':
      return _Rewinding.fromJson(json);
    case 'completed':
      return _Completed.fromJson(json);
    case 'stopped':
      return _Stopped.fromJson(json);
    case 'error':
      return _Error.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$FlAudioProcessingStateTearOff {
  const _$FlAudioProcessingStateTearOff();

  _None none() {
    return const _None();
  }

  _Waiting waiting() {
    return const _Waiting();
  }

  _Ready ready() {
    return const _Ready();
  }

  _Buffering buffering() {
    return const _Buffering();
  }

  _FastForwarding fastForwarding() {
    return const _FastForwarding();
  }

  _Rewinding rewinding() {
    return const _Rewinding();
  }

  _Completed completed() {
    return const _Completed();
  }

  _Stopped stopped() {
    return const _Stopped();
  }

  _Error error() {
    return const _Error();
  }
}

// ignore: unused_element
const $FlAudioProcessingState = _$FlAudioProcessingStateTearOff();

mixin _$FlAudioProcessingState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result waiting(),
    @required Result ready(),
    @required Result buffering(),
    @required Result fastForwarding(),
    @required Result rewinding(),
    @required Result completed(),
    @required Result stopped(),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result waiting(),
    Result ready(),
    Result buffering(),
    Result fastForwarding(),
    Result rewinding(),
    Result completed(),
    Result stopped(),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(_None value),
    @required Result waiting(_Waiting value),
    @required Result ready(_Ready value),
    @required Result buffering(_Buffering value),
    @required Result fastForwarding(_FastForwarding value),
    @required Result rewinding(_Rewinding value),
    @required Result completed(_Completed value),
    @required Result stopped(_Stopped value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(_None value),
    Result waiting(_Waiting value),
    Result ready(_Ready value),
    Result buffering(_Buffering value),
    Result fastForwarding(_FastForwarding value),
    Result rewinding(_Rewinding value),
    Result completed(_Completed value),
    Result stopped(_Stopped value),
    Result error(_Error value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $FlAudioProcessingStateCopyWith<$Res> {
  factory $FlAudioProcessingStateCopyWith(FlAudioProcessingState value,
          $Res Function(FlAudioProcessingState) then) =
      _$FlAudioProcessingStateCopyWithImpl<$Res>;
}

class _$FlAudioProcessingStateCopyWithImpl<$Res>
    implements $FlAudioProcessingStateCopyWith<$Res> {
  _$FlAudioProcessingStateCopyWithImpl(this._value, this._then);

  final FlAudioProcessingState _value;
  // ignore: unused_field
  final $Res Function(FlAudioProcessingState) _then;
}

abstract class _$NoneCopyWith<$Res> {
  factory _$NoneCopyWith(_None value, $Res Function(_None) then) =
      __$NoneCopyWithImpl<$Res>;
}

class __$NoneCopyWithImpl<$Res>
    extends _$FlAudioProcessingStateCopyWithImpl<$Res>
    implements _$NoneCopyWith<$Res> {
  __$NoneCopyWithImpl(_None _value, $Res Function(_None) _then)
      : super(_value, (v) => _then(v as _None));

  @override
  _None get _value => super._value as _None;
}

@JsonSerializable()
class _$_None implements _None {
  const _$_None();

  factory _$_None.fromJson(Map<String, dynamic> json) =>
      _$_$_NoneFromJson(json);

  @override
  String toString() {
    return 'FlAudioProcessingState.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result waiting(),
    @required Result ready(),
    @required Result buffering(),
    @required Result fastForwarding(),
    @required Result rewinding(),
    @required Result completed(),
    @required Result stopped(),
    @required Result error(),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return none();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result waiting(),
    Result ready(),
    Result buffering(),
    Result fastForwarding(),
    Result rewinding(),
    Result completed(),
    Result stopped(),
    Result error(),
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
    @required Result none(_None value),
    @required Result waiting(_Waiting value),
    @required Result ready(_Ready value),
    @required Result buffering(_Buffering value),
    @required Result fastForwarding(_FastForwarding value),
    @required Result rewinding(_Rewinding value),
    @required Result completed(_Completed value),
    @required Result stopped(_Stopped value),
    @required Result error(_Error value),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return none(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(_None value),
    Result waiting(_Waiting value),
    Result ready(_Ready value),
    Result buffering(_Buffering value),
    Result fastForwarding(_FastForwarding value),
    Result rewinding(_Rewinding value),
    Result completed(_Completed value),
    Result stopped(_Stopped value),
    Result error(_Error value),
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
    return _$_$_NoneToJson(this)..['runtimeType'] = 'none';
  }
}

abstract class _None implements FlAudioProcessingState {
  const factory _None() = _$_None;

  factory _None.fromJson(Map<String, dynamic> json) = _$_None.fromJson;
}

abstract class _$WaitingCopyWith<$Res> {
  factory _$WaitingCopyWith(_Waiting value, $Res Function(_Waiting) then) =
      __$WaitingCopyWithImpl<$Res>;
}

class __$WaitingCopyWithImpl<$Res>
    extends _$FlAudioProcessingStateCopyWithImpl<$Res>
    implements _$WaitingCopyWith<$Res> {
  __$WaitingCopyWithImpl(_Waiting _value, $Res Function(_Waiting) _then)
      : super(_value, (v) => _then(v as _Waiting));

  @override
  _Waiting get _value => super._value as _Waiting;
}

@JsonSerializable()
class _$_Waiting implements _Waiting {
  const _$_Waiting();

  factory _$_Waiting.fromJson(Map<String, dynamic> json) =>
      _$_$_WaitingFromJson(json);

  @override
  String toString() {
    return 'FlAudioProcessingState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Waiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result waiting(),
    @required Result ready(),
    @required Result buffering(),
    @required Result fastForwarding(),
    @required Result rewinding(),
    @required Result completed(),
    @required Result stopped(),
    @required Result error(),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return waiting();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result waiting(),
    Result ready(),
    Result buffering(),
    Result fastForwarding(),
    Result rewinding(),
    Result completed(),
    Result stopped(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(_None value),
    @required Result waiting(_Waiting value),
    @required Result ready(_Ready value),
    @required Result buffering(_Buffering value),
    @required Result fastForwarding(_FastForwarding value),
    @required Result rewinding(_Rewinding value),
    @required Result completed(_Completed value),
    @required Result stopped(_Stopped value),
    @required Result error(_Error value),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(_None value),
    Result waiting(_Waiting value),
    Result ready(_Ready value),
    Result buffering(_Buffering value),
    Result fastForwarding(_FastForwarding value),
    Result rewinding(_Rewinding value),
    Result completed(_Completed value),
    Result stopped(_Stopped value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WaitingToJson(this)..['runtimeType'] = 'waiting';
  }
}

abstract class _Waiting implements FlAudioProcessingState {
  const factory _Waiting() = _$_Waiting;

  factory _Waiting.fromJson(Map<String, dynamic> json) = _$_Waiting.fromJson;
}

abstract class _$ReadyCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) then) =
      __$ReadyCopyWithImpl<$Res>;
}

class __$ReadyCopyWithImpl<$Res>
    extends _$FlAudioProcessingStateCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(_Ready _value, $Res Function(_Ready) _then)
      : super(_value, (v) => _then(v as _Ready));

  @override
  _Ready get _value => super._value as _Ready;
}

@JsonSerializable()
class _$_Ready implements _Ready {
  const _$_Ready();

  factory _$_Ready.fromJson(Map<String, dynamic> json) =>
      _$_$_ReadyFromJson(json);

  @override
  String toString() {
    return 'FlAudioProcessingState.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Ready);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result waiting(),
    @required Result ready(),
    @required Result buffering(),
    @required Result fastForwarding(),
    @required Result rewinding(),
    @required Result completed(),
    @required Result stopped(),
    @required Result error(),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return ready();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result waiting(),
    Result ready(),
    Result buffering(),
    Result fastForwarding(),
    Result rewinding(),
    Result completed(),
    Result stopped(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(_None value),
    @required Result waiting(_Waiting value),
    @required Result ready(_Ready value),
    @required Result buffering(_Buffering value),
    @required Result fastForwarding(_FastForwarding value),
    @required Result rewinding(_Rewinding value),
    @required Result completed(_Completed value),
    @required Result stopped(_Stopped value),
    @required Result error(_Error value),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return ready(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(_None value),
    Result waiting(_Waiting value),
    Result ready(_Ready value),
    Result buffering(_Buffering value),
    Result fastForwarding(_FastForwarding value),
    Result rewinding(_Rewinding value),
    Result completed(_Completed value),
    Result stopped(_Stopped value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReadyToJson(this)..['runtimeType'] = 'ready';
  }
}

abstract class _Ready implements FlAudioProcessingState {
  const factory _Ready() = _$_Ready;

  factory _Ready.fromJson(Map<String, dynamic> json) = _$_Ready.fromJson;
}

abstract class _$BufferingCopyWith<$Res> {
  factory _$BufferingCopyWith(
          _Buffering value, $Res Function(_Buffering) then) =
      __$BufferingCopyWithImpl<$Res>;
}

class __$BufferingCopyWithImpl<$Res>
    extends _$FlAudioProcessingStateCopyWithImpl<$Res>
    implements _$BufferingCopyWith<$Res> {
  __$BufferingCopyWithImpl(_Buffering _value, $Res Function(_Buffering) _then)
      : super(_value, (v) => _then(v as _Buffering));

  @override
  _Buffering get _value => super._value as _Buffering;
}

@JsonSerializable()
class _$_Buffering implements _Buffering {
  const _$_Buffering();

  factory _$_Buffering.fromJson(Map<String, dynamic> json) =>
      _$_$_BufferingFromJson(json);

  @override
  String toString() {
    return 'FlAudioProcessingState.buffering()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Buffering);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result waiting(),
    @required Result ready(),
    @required Result buffering(),
    @required Result fastForwarding(),
    @required Result rewinding(),
    @required Result completed(),
    @required Result stopped(),
    @required Result error(),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return buffering();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result waiting(),
    Result ready(),
    Result buffering(),
    Result fastForwarding(),
    Result rewinding(),
    Result completed(),
    Result stopped(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (buffering != null) {
      return buffering();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(_None value),
    @required Result waiting(_Waiting value),
    @required Result ready(_Ready value),
    @required Result buffering(_Buffering value),
    @required Result fastForwarding(_FastForwarding value),
    @required Result rewinding(_Rewinding value),
    @required Result completed(_Completed value),
    @required Result stopped(_Stopped value),
    @required Result error(_Error value),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return buffering(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(_None value),
    Result waiting(_Waiting value),
    Result ready(_Ready value),
    Result buffering(_Buffering value),
    Result fastForwarding(_FastForwarding value),
    Result rewinding(_Rewinding value),
    Result completed(_Completed value),
    Result stopped(_Stopped value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (buffering != null) {
      return buffering(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BufferingToJson(this)..['runtimeType'] = 'buffering';
  }
}

abstract class _Buffering implements FlAudioProcessingState {
  const factory _Buffering() = _$_Buffering;

  factory _Buffering.fromJson(Map<String, dynamic> json) =
      _$_Buffering.fromJson;
}

abstract class _$FastForwardingCopyWith<$Res> {
  factory _$FastForwardingCopyWith(
          _FastForwarding value, $Res Function(_FastForwarding) then) =
      __$FastForwardingCopyWithImpl<$Res>;
}

class __$FastForwardingCopyWithImpl<$Res>
    extends _$FlAudioProcessingStateCopyWithImpl<$Res>
    implements _$FastForwardingCopyWith<$Res> {
  __$FastForwardingCopyWithImpl(
      _FastForwarding _value, $Res Function(_FastForwarding) _then)
      : super(_value, (v) => _then(v as _FastForwarding));

  @override
  _FastForwarding get _value => super._value as _FastForwarding;
}

@JsonSerializable()
class _$_FastForwarding implements _FastForwarding {
  const _$_FastForwarding();

  factory _$_FastForwarding.fromJson(Map<String, dynamic> json) =>
      _$_$_FastForwardingFromJson(json);

  @override
  String toString() {
    return 'FlAudioProcessingState.fastForwarding()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FastForwarding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result waiting(),
    @required Result ready(),
    @required Result buffering(),
    @required Result fastForwarding(),
    @required Result rewinding(),
    @required Result completed(),
    @required Result stopped(),
    @required Result error(),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return fastForwarding();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result waiting(),
    Result ready(),
    Result buffering(),
    Result fastForwarding(),
    Result rewinding(),
    Result completed(),
    Result stopped(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fastForwarding != null) {
      return fastForwarding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(_None value),
    @required Result waiting(_Waiting value),
    @required Result ready(_Ready value),
    @required Result buffering(_Buffering value),
    @required Result fastForwarding(_FastForwarding value),
    @required Result rewinding(_Rewinding value),
    @required Result completed(_Completed value),
    @required Result stopped(_Stopped value),
    @required Result error(_Error value),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return fastForwarding(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(_None value),
    Result waiting(_Waiting value),
    Result ready(_Ready value),
    Result buffering(_Buffering value),
    Result fastForwarding(_FastForwarding value),
    Result rewinding(_Rewinding value),
    Result completed(_Completed value),
    Result stopped(_Stopped value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fastForwarding != null) {
      return fastForwarding(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FastForwardingToJson(this)..['runtimeType'] = 'fastForwarding';
  }
}

abstract class _FastForwarding implements FlAudioProcessingState {
  const factory _FastForwarding() = _$_FastForwarding;

  factory _FastForwarding.fromJson(Map<String, dynamic> json) =
      _$_FastForwarding.fromJson;
}

abstract class _$RewindingCopyWith<$Res> {
  factory _$RewindingCopyWith(
          _Rewinding value, $Res Function(_Rewinding) then) =
      __$RewindingCopyWithImpl<$Res>;
}

class __$RewindingCopyWithImpl<$Res>
    extends _$FlAudioProcessingStateCopyWithImpl<$Res>
    implements _$RewindingCopyWith<$Res> {
  __$RewindingCopyWithImpl(_Rewinding _value, $Res Function(_Rewinding) _then)
      : super(_value, (v) => _then(v as _Rewinding));

  @override
  _Rewinding get _value => super._value as _Rewinding;
}

@JsonSerializable()
class _$_Rewinding implements _Rewinding {
  const _$_Rewinding();

  factory _$_Rewinding.fromJson(Map<String, dynamic> json) =>
      _$_$_RewindingFromJson(json);

  @override
  String toString() {
    return 'FlAudioProcessingState.rewinding()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Rewinding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result waiting(),
    @required Result ready(),
    @required Result buffering(),
    @required Result fastForwarding(),
    @required Result rewinding(),
    @required Result completed(),
    @required Result stopped(),
    @required Result error(),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return rewinding();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result waiting(),
    Result ready(),
    Result buffering(),
    Result fastForwarding(),
    Result rewinding(),
    Result completed(),
    Result stopped(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rewinding != null) {
      return rewinding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(_None value),
    @required Result waiting(_Waiting value),
    @required Result ready(_Ready value),
    @required Result buffering(_Buffering value),
    @required Result fastForwarding(_FastForwarding value),
    @required Result rewinding(_Rewinding value),
    @required Result completed(_Completed value),
    @required Result stopped(_Stopped value),
    @required Result error(_Error value),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return rewinding(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(_None value),
    Result waiting(_Waiting value),
    Result ready(_Ready value),
    Result buffering(_Buffering value),
    Result fastForwarding(_FastForwarding value),
    Result rewinding(_Rewinding value),
    Result completed(_Completed value),
    Result stopped(_Stopped value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (rewinding != null) {
      return rewinding(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RewindingToJson(this)..['runtimeType'] = 'rewinding';
  }
}

abstract class _Rewinding implements FlAudioProcessingState {
  const factory _Rewinding() = _$_Rewinding;

  factory _Rewinding.fromJson(Map<String, dynamic> json) =
      _$_Rewinding.fromJson;
}

abstract class _$CompletedCopyWith<$Res> {
  factory _$CompletedCopyWith(
          _Completed value, $Res Function(_Completed) then) =
      __$CompletedCopyWithImpl<$Res>;
}

class __$CompletedCopyWithImpl<$Res>
    extends _$FlAudioProcessingStateCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(_Completed _value, $Res Function(_Completed) _then)
      : super(_value, (v) => _then(v as _Completed));

  @override
  _Completed get _value => super._value as _Completed;
}

@JsonSerializable()
class _$_Completed implements _Completed {
  const _$_Completed();

  factory _$_Completed.fromJson(Map<String, dynamic> json) =>
      _$_$_CompletedFromJson(json);

  @override
  String toString() {
    return 'FlAudioProcessingState.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Completed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result waiting(),
    @required Result ready(),
    @required Result buffering(),
    @required Result fastForwarding(),
    @required Result rewinding(),
    @required Result completed(),
    @required Result stopped(),
    @required Result error(),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return completed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result waiting(),
    Result ready(),
    Result buffering(),
    Result fastForwarding(),
    Result rewinding(),
    Result completed(),
    Result stopped(),
    Result error(),
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
    @required Result none(_None value),
    @required Result waiting(_Waiting value),
    @required Result ready(_Ready value),
    @required Result buffering(_Buffering value),
    @required Result fastForwarding(_FastForwarding value),
    @required Result rewinding(_Rewinding value),
    @required Result completed(_Completed value),
    @required Result stopped(_Stopped value),
    @required Result error(_Error value),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return completed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(_None value),
    Result waiting(_Waiting value),
    Result ready(_Ready value),
    Result buffering(_Buffering value),
    Result fastForwarding(_FastForwarding value),
    Result rewinding(_Rewinding value),
    Result completed(_Completed value),
    Result stopped(_Stopped value),
    Result error(_Error value),
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
    return _$_$_CompletedToJson(this)..['runtimeType'] = 'completed';
  }
}

abstract class _Completed implements FlAudioProcessingState {
  const factory _Completed() = _$_Completed;

  factory _Completed.fromJson(Map<String, dynamic> json) =
      _$_Completed.fromJson;
}

abstract class _$StoppedCopyWith<$Res> {
  factory _$StoppedCopyWith(_Stopped value, $Res Function(_Stopped) then) =
      __$StoppedCopyWithImpl<$Res>;
}

class __$StoppedCopyWithImpl<$Res>
    extends _$FlAudioProcessingStateCopyWithImpl<$Res>
    implements _$StoppedCopyWith<$Res> {
  __$StoppedCopyWithImpl(_Stopped _value, $Res Function(_Stopped) _then)
      : super(_value, (v) => _then(v as _Stopped));

  @override
  _Stopped get _value => super._value as _Stopped;
}

@JsonSerializable()
class _$_Stopped implements _Stopped {
  const _$_Stopped();

  factory _$_Stopped.fromJson(Map<String, dynamic> json) =>
      _$_$_StoppedFromJson(json);

  @override
  String toString() {
    return 'FlAudioProcessingState.stopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Stopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result waiting(),
    @required Result ready(),
    @required Result buffering(),
    @required Result fastForwarding(),
    @required Result rewinding(),
    @required Result completed(),
    @required Result stopped(),
    @required Result error(),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return stopped();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result waiting(),
    Result ready(),
    Result buffering(),
    Result fastForwarding(),
    Result rewinding(),
    Result completed(),
    Result stopped(),
    Result error(),
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
    @required Result none(_None value),
    @required Result waiting(_Waiting value),
    @required Result ready(_Ready value),
    @required Result buffering(_Buffering value),
    @required Result fastForwarding(_FastForwarding value),
    @required Result rewinding(_Rewinding value),
    @required Result completed(_Completed value),
    @required Result stopped(_Stopped value),
    @required Result error(_Error value),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(_None value),
    Result waiting(_Waiting value),
    Result ready(_Ready value),
    Result buffering(_Buffering value),
    Result fastForwarding(_FastForwarding value),
    Result rewinding(_Rewinding value),
    Result completed(_Completed value),
    Result stopped(_Stopped value),
    Result error(_Error value),
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
    return _$_$_StoppedToJson(this)..['runtimeType'] = 'stopped';
  }
}

abstract class _Stopped implements FlAudioProcessingState {
  const factory _Stopped() = _$_Stopped;

  factory _Stopped.fromJson(Map<String, dynamic> json) = _$_Stopped.fromJson;
}

abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

class __$ErrorCopyWithImpl<$Res>
    extends _$FlAudioProcessingStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

@JsonSerializable()
class _$_Error implements _Error {
  const _$_Error();

  factory _$_Error.fromJson(Map<String, dynamic> json) =>
      _$_$_ErrorFromJson(json);

  @override
  String toString() {
    return 'FlAudioProcessingState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result none(),
    @required Result waiting(),
    @required Result ready(),
    @required Result buffering(),
    @required Result fastForwarding(),
    @required Result rewinding(),
    @required Result completed(),
    @required Result stopped(),
    @required Result error(),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result none(),
    Result waiting(),
    Result ready(),
    Result buffering(),
    Result fastForwarding(),
    Result rewinding(),
    Result completed(),
    Result stopped(),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result none(_None value),
    @required Result waiting(_Waiting value),
    @required Result ready(_Ready value),
    @required Result buffering(_Buffering value),
    @required Result fastForwarding(_FastForwarding value),
    @required Result rewinding(_Rewinding value),
    @required Result completed(_Completed value),
    @required Result stopped(_Stopped value),
    @required Result error(_Error value),
  }) {
    assert(none != null);
    assert(waiting != null);
    assert(ready != null);
    assert(buffering != null);
    assert(fastForwarding != null);
    assert(rewinding != null);
    assert(completed != null);
    assert(stopped != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result none(_None value),
    Result waiting(_Waiting value),
    Result ready(_Ready value),
    Result buffering(_Buffering value),
    Result fastForwarding(_FastForwarding value),
    Result rewinding(_Rewinding value),
    Result completed(_Completed value),
    Result stopped(_Stopped value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ErrorToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class _Error implements FlAudioProcessingState {
  const factory _Error() = _$_Error;

  factory _Error.fromJson(Map<String, dynamic> json) = _$_Error.fromJson;
}
