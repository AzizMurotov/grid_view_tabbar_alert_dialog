import 'package:amir_temur/alert_dialog.dart';
import 'package:amir_temur/grid_view_page.dart';
import 'package:amir_temur/tab_bar_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AlertDialogPage(),
      routes: {
        AlertDialogPage.id:(context) =>const AlertDialogPage(),
        GridViewPage.id:(context)=>const GridViewPage(),
        MyTabBar.id:(context)=>const MyTabBar(),
      },
    );
  }
}
