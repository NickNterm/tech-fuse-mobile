import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class AnotherFlushbarHelper {
  static Flushbar createError({
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    return Flushbar(
      message: message,
      duration: duration,
      backgroundColor: Colors.red,
      margin: EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      icon: Icon(
        Icons.error,
        color: Colors.white,
      ),
    );
  }

  static Flushbar createSuccess({
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    return Flushbar(
      message: message,
      duration: duration,
      backgroundColor: Colors.green,
      margin: EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      flushbarPosition: FlushbarPosition.TOP,
      icon: Icon(
        Icons.check,
        color: Colors.white,
      ),
    );
  }

  static Flushbar createInfo({
    required String message,
    Duration duration = const Duration(seconds: 3),
  }) {
    return Flushbar(
      message: message,
      duration: duration,
      backgroundColor: Colors.blue,
      icon: Icon(
        Icons.info,
        color: Colors.white,
      ),
    );
  }
}
