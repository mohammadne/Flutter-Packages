part of 'api_bloc.dart';

@immutable
abstract class ApiState {}

class ApiInitial extends ApiState {}

class ApiLoading extends ApiState {}

class ApiLoaded extends ApiState {
  ApiLoaded(this.items);
  final List<FlAudioItem> items;
}

class ApiError extends ApiState {}
