// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'fl_audio_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FlAudioState _$FlAudioStateFromJson(Map<String, dynamic> json) {
  return Fl_PlayerState.fromJson(json);
}

class _$FlAudioStateTearOff {
  const _$FlAudioStateTearOff();

  Fl_PlayerState call(
      {@required FlAudioProcessingState processingState,
      @required bool playing,
      @required double speed,
      @required Duration position,
      @required Duration updateTime,
      @required Duration bufferedPosition}) {
    return Fl_PlayerState(
      processingState: processingState,
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

abstract class $Fl_PlayerStateCopyWith<$Res>
    implements $FlAudioStateCopyWith<$Res> {
  factory $Fl_PlayerStateCopyWith(
          Fl_PlayerState value, $Res Function(Fl_PlayerState) then) =
      _$Fl_PlayerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FlAudioProcessingState processingState,
      bool playing,
      double speed,
      Duration position,
      Duration updateTime,
      Duration bufferedPosition});

  @override
  $FlAudioProcessingStateCopyWith<$Res> get processingState;
}

class _$Fl_PlayerStateCopyWithImpl<$Res>
    extends _$FlAudioStateCopyWithImpl<$Res>
    implements $Fl_PlayerStateCopyWith<$Res> {
  _$Fl_PlayerStateCopyWithImpl(
      Fl_PlayerState _value, $Res Function(Fl_PlayerState) _then)
      : super(_value, (v) => _then(v as Fl_PlayerState));

  @override
  Fl_PlayerState get _value => super._value as Fl_PlayerState;

  @override
  $Res call({
    Object processingState = freezed,
    Object playing = freezed,
    Object speed = freezed,
    Object position = freezed,
    Object updateTime = freezed,
    Object bufferedPosition = freezed,
  }) {
    return _then(Fl_PlayerState(
      processingState: processingState == freezed
          ? _value.processingState
          : processingState as FlAudioProcessingState,
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
class _$Fl_PlayerState implements Fl_PlayerState {
  const _$Fl_PlayerState(
      {@required this.processingState,
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

  factory _$Fl_PlayerState.fromJson(Map<String, dynamic> json) =>
      _$_$Fl_PlayerStateFromJson(json);

  @override
  final FlAudioProcessingState processingState;
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
    return 'FlAudioState(processingState: $processingState, playing: $playing, speed: $speed, position: $position, updateTime: $updateTime, bufferedPosition: $bufferedPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Fl_PlayerState &&
            (identical(other.processingState, processingState) ||
                const DeepCollectionEquality()
                    .equals(other.processingState, processingState)) &&
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
      const DeepCollectionEquality().hash(playing) ^
      const DeepCollectionEquality().hash(speed) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(updateTime) ^
      const DeepCollectionEquality().hash(bufferedPosition);

  @override
  $Fl_PlayerStateCopyWith<Fl_PlayerState> get copyWith =>
      _$Fl_PlayerStateCopyWithImpl<Fl_PlayerState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$Fl_PlayerStateToJson(this);
  }
}

abstract class Fl_PlayerState implements FlAudioState {
  const factory Fl_PlayerState(
      {@required FlAudioProcessingState processingState,
      @required bool playing,
      @required double speed,
      @required Duration position,
      @required Duration updateTime,
      @required Duration bufferedPosition}) = _$Fl_PlayerState;

  factory Fl_PlayerState.fromJson(Map<String, dynamic> json) =
      _$Fl_PlayerState.fromJson;

  @override
  FlAudioProcessingState get processingState;
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
  $Fl_PlayerStateCopyWith<Fl_PlayerState> get copyWith;
}
