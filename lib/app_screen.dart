import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple App"),
      ),
      body: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: Visibility(
                  visible: false,
                  child: CircularProgressIndicator(),
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
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
