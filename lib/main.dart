import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Screen/task_screen.dart';
import 'package:todo/model/task_data_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: TasksScreen(),
      ),
    );
  }
}
