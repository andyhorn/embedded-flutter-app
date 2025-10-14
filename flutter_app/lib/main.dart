import 'dart:js_interop';
import 'dart:ui_web' as ui_web;

import 'package:flutter/material.dart';
import 'package:flutter_app/multi_view_app.dart';

void main() {
  // Run this MultiViewApp widget, which is essentially global.
  // Any time a view is added via the JavaScript API, it will call the
  // viewBuilder function to create a new instance of MainApp.
  runWidget(MultiViewApp(viewBuilder: (context) => const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the unique view ID for this instance of MainApp.
    final id = View.of(context).viewId;

    // Get the initial data passed from JavaScript when this view was created.
    final initialData = ui_web.views.getInitialData(id) as InitialData;

    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text('${initialData.randomValue} - Hello World!')),
      ),
    );
  }
}

// Use an extension type to represent the structure of the initial data
// passed from JavaScript when creating a new view.
// Is this required over standard JSON deserialization? :shrug:
extension type InitialData<T extends JSObject>._(JSObject object)
    implements JSObject {
  external InitialData({required int randomValue});

  external int get randomValue;
}
