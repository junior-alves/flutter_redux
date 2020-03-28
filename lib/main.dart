import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterreduxtest/app_screen.dart';
import 'package:flutterreduxtest/redux/app_reduces.dart';
import 'package:redux/redux.dart';
import 'package:flutterreduxtest/model/app_state.dart';

void main() {
  runApp(SimpleApp());
}

class SimpleApp extends StatelessWidget {
  final Store store = Store<AppState>(
    appReducer,
    initialState: AppState.initial(),
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          title: 'Simple App Redux',
          theme: ThemeData(
            //brightness: Brightness.light,
            primarySwatch: Colors.blue,
          ),
          home: AppScreen(),
        ));
  }
}
