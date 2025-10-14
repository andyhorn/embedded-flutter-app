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

    return MaterialApp(
      home: Scaffold(body: Center(child: Text('$id - Hello World!'))),
    );
  }
}
