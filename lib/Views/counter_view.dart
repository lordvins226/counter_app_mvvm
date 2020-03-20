import 'package:counterappmvvm/ViewModels/counter_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  final String title;

  const CounterPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterViewModel =
        Provider.of<CounterViewModel>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counterViewModel.counter}',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => counterViewModel.increment(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 5,
          ),
          FloatingActionButton(
            onPressed: () => counterViewModel.decrement(),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
