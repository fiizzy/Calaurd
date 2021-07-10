import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

toastMessage({type, message}) {
  return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 2,
      backgroundColor: type == 'success' ? Colors.green : Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
}
