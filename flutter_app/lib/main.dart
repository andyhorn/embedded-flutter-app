import 'package:flutter/material.dart';
import 'package:flutter_app/multi_view_app.dart';

void main() {
  runWidget(MultiViewApp(viewBuilder: (context) => const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final id = View.of(context).viewId;

    return MaterialApp(
      home: Scaffold(body: Center(child: Text('$id - Hello World!'))),
    );
  }
}
