import 'package:firebaser/utils/navigate.dart';
import 'package:firebaser/utils/strings.dart';
import 'package:firebaser/widgets/auth/phone_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.selectAuthType),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 32,
          right: 32,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
              child: FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () => navigateTo(context, PhoneAuth()),
                child: Text('Phone'),
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 24),
              child: FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {},
                child: Text('Email'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
