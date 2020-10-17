import 'package:freezed_annotation/freezed_annotation.dart';

part 'fl_api_header.freezed.dart';

@freezed
abstract class FlApiHeader with _$FlApiHeader {
  const factory FlApiHeader.formData() = _FormData;
  const factory FlApiHeader.basic() = Basic;
  const factory FlApiHeader.data() = _Data;
}

extension FlApiHeaderEx on FlApiHeader {
  Map<String, String> get toMap => {
        'accept': 'application/json',
        'content-type': this.when(
          formData: () => 'multipart/form-data; boundary=something',
          basic: () => 'application/json; charset=utf-8',
          data: () => 'application/json; charset=utf-8',
        ),
      };
}
