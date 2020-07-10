import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: 150,
              height: 204,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 24),
              width: 20,
              height: 20,
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}
