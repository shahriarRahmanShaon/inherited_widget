import 'package:flutter/material.dart';

class Api {
  String? dateAndTime;

  Future<String> getDateAndTime() {
    return Future.delayed(const Duration(seconds: 2), () {
      return DateTime.now().toIso8601String();
    }).then((value) {
      dateAndTime = value;
      return value;
    });
  }
}