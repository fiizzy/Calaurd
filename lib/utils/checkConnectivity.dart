import 'package:connectivity/connectivity.dart';

class CheckConnectivity {
  String? connectionStatus;
  Future<String> checkConnectivity() async {
    dynamic connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return 'connected';
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return 'connected';
    }
    return 'notConnected';
  }
}
