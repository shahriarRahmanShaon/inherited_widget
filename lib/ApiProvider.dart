import 'package:flutter/material.dart';
import 'package:inherited_widget/Api.dart';
import 'package:uuid/uuid.dart';

class ApiProvider extends InheritedWidget {
  final Api api;
  final String uuid;

  ApiProvider({Key? Key, required this.api, required Widget child})
      : uuid = const Uuid().v4(),
        super(key: Key, child: child);

  @override
  bool updateShouldNotify(covariant ApiProvider oldWidget) {
    if (uuid != oldWidget.uuid) {
      return true;
    } else {
      return false;
    }
  }

  static ApiProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ApiProvider>()!;
  }
  
}
