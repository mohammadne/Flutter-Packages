import 'package:dio/dio.dart';

import 'fl_api_header.dart';

typedef OnPercentage = void Function(int, int);

class FlApiOption {
  const FlApiOption({
    this.header,
    this.query,
    this.onSendPercentage,
    this.onRecievePercentage,
  });

  final FlApiHeader header;
  final Map<String, dynamic> query;
  final OnPercentage onSendPercentage;
  final OnPercentage onRecievePercentage;
}

extension FlApiOptionEx on FlApiOption {
  RequestOptions get requestOptions => RequestOptions(
        onReceiveProgress: onRecievePercentage,
        onSendProgress: onSendPercentage,
        queryParameters: query,
        headers: header.toMap,
      );
}
