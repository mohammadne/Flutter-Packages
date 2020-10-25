import 'package:freezed_annotation/freezed_annotation.dart';
part 'box_type.freezed.dart';

@freezed
abstract class BoxType with _$BoxType {
  const factory BoxType.multiValue() = _MultiValue;
  const factory BoxType.singleValue({
    @JsonKey(defaultValue: 0) int key,
  }) = _SingleValue;
}
