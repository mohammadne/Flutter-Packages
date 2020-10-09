// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fl_audio_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FlAudioState _$FlAudioStateFromJson(Map<String, dynamic> json) {
  return _FlAudioState.fromJson(json);
}

class _$FlAudioStateTearOff {
  const _$FlAudioStateTearOff();

  _FlAudioState call(
      {@required FlAudioProcessingState processingState,
      Duration duration,
      @required bool playing,
      @required double speed,
      @required Duration position,
      @required Duration updateTime,
      @required Duration bufferedPosition}) {
    return _FlAudioState(
      processingState: processingState,
      duration: duration,
      playing: playing,
      speed: speed,
      position: position,
      updateTime: updateTime,
      bufferedPosition: bufferedPosition,
    );
  }
}

// ignore: unused_element
const $FlAudioState = _$FlAudioStateTearOff();

mixin _$FlAudioState {
  FlAudioProcessingState get processingState;
  Duration get duration;
  bool get playing;
  double get speed;
  Duration get position;
  Duration get updateTime;
  Duration get bufferedPosition;

  Map<String, dynamic> toJson();
  $FlAudioStateCopyWith<FlAudioState> get copyWith;
}

abstract class $FlAudioStateCopyWith<$Res> {
  factory $FlAudioStateCopyWith(
          FlAudioState value, $Res Function(FlAudioState) then) =
      _$FlAudioStateCopyWithImpl<$Res>;
  $Res call(
      {FlAudioProcessingState processingState,
      Duration duration,
      bool playing,
      double speed,
      Duration position,
      Duration updateTime,
      Duration bufferedPosition});

  $FlAudioProcessingStateCopyWith<$Res> get processingState;
}

class _$FlAudioStateCopyWithImpl<$Res> implements $FlAudioStateCopyWith<$Res> {
  _$FlAudioStateCopyWithImpl(this._value, this._then);

  final FlAudioState _value;
  // ignore: unused_field
  final $Res Function(FlAudioState) _then;

  @override
  $Res call({
    Object processingState = freezed,
    Object duration = freezed,
    Object playing = freezed,
    Object speed = freezed,
    Object position = freezed,
    Object updateTime = freezed,
    Object bufferedPosition = freezed,
  }) {
    return _then(_value.copyWith(
      processingState: processingState == freezed
          ? _value.processingState
          : processingState as FlAudioProcessingState,
      duration: duration == freezed ? _value.duration : duration as Duration,
      playing: playing == freezed ? _value.playing : playing as bool,
      speed: speed == freezed ? _value.speed : speed as double,
      position: position == freezed ? _value.position : position as Duration,
      updateTime:
          updateTime == freezed ? _value.updateTime : updateTime as Duration,
      bufferedPosition: bufferedPosition == freezed
          ? _value.bufferedPosition
          : bufferedPosition as Duration,
    ));
  }

  @override
  $FlAudioProcessingStateCopyWith<$Res> get processingState {
    if (_value.processingState == null) {
      return null;
    }
    return $FlAudioProcessingStateCopyWith<$Res>(_value.processingState,
        (value) {
      return _then(_value.copyWith(processingState: value));
    });
  }
}

abstract class _$FlAudioStateCopyWith<$Res>
    implements $FlAudioStateCopyWith<$Res> {
  factory _$FlAudioStateCopyWith(
          _FlAudioState value, $Res Function(_FlAudioState) then) =
      __$FlAudioStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FlAudioProcessingState processingState,
      Duration duration,
      bool playing,
      double speed,
      Duration position,
      Duration updateTime,
      Duration bufferedPosition});

  @override
  $FlAudioProcessingStateCopyWith<$Res> get processingState;
}

class __$FlAudioStateCopyWithImpl<$Res> extends _$FlAudioStateCopyWithImpl<$Res>
    implements _$FlAudioStateCopyWith<$Res> {
  __$FlAudioStateCopyWithImpl(
      _FlAudioState _value, $Res Function(_FlAudioState) _then)
      : super(_value, (v) => _then(v as _FlAudioState));

  @override
  _FlAudioState get _value => super._value as _FlAudioState;

  @override
  $Res call({
    Object processingState = freezed,
    Object duration = freezed,
    Object playing = freezed,
    Object speed = freezed,
    Object position = freezed,
    Object updateTime = freezed,
    Object bufferedPosition = freezed,
  }) {
    return _then(_FlAudioState(
      processingState: processingState == freezed
          ? _value.processingState
          : processingState as FlAudioProcessingState,
      duration: duration == freezed ? _value.duration : duration as Duration,
      playing: playing == freezed ? _value.playing : playing as bool,
      speed: speed == freezed ? _value.speed : speed as double,
      position: position == freezed ? _value.position : position as Duration,
      updateTime:
          updateTime == freezed ? _value.updateTime : updateTime as Duration,
      bufferedPosition: bufferedPosition == freezed
          ? _value.bufferedPosition
          : bufferedPosition as Duration,
    ));
  }
}

@JsonSerializable()
class _$_FlAudioState implements _FlAudioState {
  const _$_FlAudioState(
      {@required this.processingState,
      this.duration,
      @required this.playing,
      @required this.speed,
      @required this.position,
      @required this.updateTime,
      @required this.bufferedPosition})
      : assert(processingState != null),
        assert(playing != null),
        assert(speed != null),
        assert(position != null),
        assert(updateTime != null),
        assert(bufferedPosition != null);

  factory _$_FlAudioState.fromJson(Map<String, dynamic> json) =>
      _$_$_FlAudioStateFromJson(json);

  @override
  final FlAudioProcessingState processingState;
  @override
  final Duration duration;
  @override
  final bool playing;
  @override
  final double speed;
  @override
  final Duration position;
  @override
  final Duration updateTime;
  @override
  final Duration bufferedPosition;

  @override
  String toString() {
    return 'FlAudioState(processingState: $processingState, duration: $duration, playing: $playing, speed: $speed, position: $position, updateTime: $updateTime, bufferedPosition: $bufferedPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlAudioState &&
            (identical(other.processingState, processingState) ||
                const DeepCollectionEquality()
                    .equals(other.processingState, processingState)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.playing, playing) ||
                const DeepCollectionEquality()
                    .equals(other.playing, playing)) &&
            (identical(other.speed, speed) ||
                const DeepCollectionEquality().equals(other.speed, speed)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.updateTime, updateTime) ||
                const DeepCollectionEquality()
                    .equals(other.updateTime, updateTime)) &&
            (identical(other.bufferedPosition, bufferedPosition) ||
                const DeepCollectionEquality()
                    .equals(other.bufferedPosition, bufferedPosition)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(processingState) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(playing) ^
      const DeepCollectionEquality().hash(speed) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(updateTime) ^
      const DeepCollectionEquality().hash(bufferedPosition);

  @override
  _$FlAudioStateCopyWith<_FlAudioState> get copyWith =>
      __$FlAudioStateCopyWithImpl<_FlAudioState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FlAudioStateToJson(this);
  }
}

abstract class _FlAudioState implements FlAudioState {
  const factory _FlAudioState(
      {@required FlAudioProcessingState processingState,
      Duration duration,
      @required bool playing,
      @required double speed,
      @required Duration position,
      @required Duration updateTime,
      @required Duration bufferedPosition}) = _$_FlAudioState;

  factory _FlAudioState.fromJson(Map<String, dynamic> json) =
      _$_FlAudioState.fromJson;

  @override
  FlAudioProcessingState get processingState;
  @override
  Duration get duration;
  @override
  bool get playing;
  @override
  double get speed;
  @override
  Duration get position;
  @override
  Duration get updateTime;
  @override
  Duration get bufferedPosition;
  @override
  _$FlAudioStateCopyWith<_FlAudioState> get copyWith;
}
