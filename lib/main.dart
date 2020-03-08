import 'package:counterappmvvm/ViewModels/counter_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Views/counter_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'counter_mvvm_app',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: ChangeNotifierProvider<CounterViewModel>(
        create: (context) => CounterViewModel(),
        child: CounterPage(title: 'Home'),
      )
    );
  }
}


