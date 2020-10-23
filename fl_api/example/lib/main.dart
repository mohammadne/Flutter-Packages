import 'package:fl_api/fl_api.dart';

Future<void> main() async {
  FlApi api = FlApiImpl();
  sendReq() => api.postMethod(
        'https://api.melodyo.org/v1/auth/oauth',
        body: {
          "provider": "google",
          "token":
              "ya29.a0AfH6SMDEfB2UjyomtGwWq4gJ1L9m1x0OQDy_G0YDwUCGfCwkUfFhTS-jpwpTxr3EOKaO2BhHYOR3j6q5imF43udrjLETZrGJpiJCkcxM_tblRoL9KUPNQpS_q19vSMQOfRqFlsPIBgvhHdVtZUUUSNCktgwo0c7hXdU"
        },
      );

  try {
    final res = await sendReq();
    print(res);
  } catch (e) {
    print(e);
  }
}
