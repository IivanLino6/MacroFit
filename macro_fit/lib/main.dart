import 'package:flutter/material.dart';
import 'package:macro_fit/view/init/init_viewmodel.dart';
import 'package:macro_fit/view/init/pages/info_page.dart';
import 'package:macro_fit/view/init/pages/init_page.dart';
import 'package:macro_fit/view/init/pages/target_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => InitViewmodel())],
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitPage(),
      routes: {
        'InitPage': (BuildContext context) => InitPage(),
        'TargetPage':(BuildContext context) => TargetPage(),
        'InfoPage':(BuildContext context) => InfoPage(),
      },
    ),);
  }
}
