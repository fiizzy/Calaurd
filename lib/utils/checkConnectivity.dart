import 'package:connectivity/connectivity.dart';

class CheckConnectivity {
  String? connectionStatus;
  static Future<String> checkConnectivity() async {
    dynamic connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return 'connected';
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return 'connected';
    } else {
      return 'notConnected';
    }
  }
}
