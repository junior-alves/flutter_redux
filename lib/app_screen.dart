import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterreduxtest/model/app_state.dart';
import 'package:flutterreduxtest/model/loading_state.dart';
import 'package:flutterreduxtest/redux/loading_actions.dart';

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StoreConnector<AppState, LoadingState>(
          converter: (store) => store.state.loadingState,
          builder: (context, state) {
            return Text(state.enabled ? "Loading" : "Simple App");
          },
        ),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: StoreConnector<AppState, LoadingState>(
                  converter: (store) => store.state.loadingState,
                  builder: (context, state) {
                    return Visibility(
                      visible: state.enabled,
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            child: Center(
              child: RaisedButton(
                child: Text("Clique aqui!!!"),
                onPressed: () {
                  StoreProvider.of<AppState>(context)
                      .dispatch(ToggleLoadingAction());
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
