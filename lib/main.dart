import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterreduxtest/app_screen.dart';
import 'package:flutterreduxtest/redux/app_reduces.dart';
import 'package:redux/redux.dart';
import 'package:flutterreduxtest/model/app_state.dart';
import 'package:redux_thunk/redux_thunk.dart';

void main() {
  runApp(SimpleApp());
}

void loggingMiddleware<AppState>(
  Store<AppState> store,
  dynamic action,
  NextDispatcher next,
) {
  print(action);
  next(action);
}

class SimpleApp extends StatelessWidget {
  final Store store = Store<AppState>(
    appReducer,
    initialState: AppState.initial(),
    middleware: [thunkMiddleware, loggingMiddleware],
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
