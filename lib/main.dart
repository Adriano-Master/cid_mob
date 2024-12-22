import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:cid_mob/components/BottonNavigatorBar.dart';
import 'package:cid_mob/states/NavigatorComponentState.dart';

List<Widget> pagesOpions = <Widget>[
  Text(
    'Index 0: Home',
    style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
  ),
  Text(
    'Index 1: Business',
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
  ),
  Text(
    'Index 2: Identidade',
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
  ),
];

void main() {

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavigatorComponentState(pagesOpions) ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Identidade Funcional',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false ,
      ),
      home: BottomNavigationBarComponent(),
    );
  }
}

