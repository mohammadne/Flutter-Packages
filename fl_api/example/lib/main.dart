import 'package:flutter/material.dart';
import 'package:fl_api/fl_api.dart';

void main() {
  FlApi api = FlApiImpl(baseUrl: 'base_url');
  sendReq() => api.getMethod(
        'endpoint',
        option: FlApiOption(
          header: FlApiHeader.basic(),
        ),
      );

  sendReq().then(
    (res) => res.fold(
      (error) => null,
      (res) => null,
    ),
  );
}
