import 'package:firebaser/utils/strings.dart';
import 'package:firebaser/widgets/auth/verify.dart';
import 'package:flutter/material.dart';

class PhoneAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 72,
              left: 24,
              bottom: 24,
            ),
            child: Text(
              '',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 56,
              left: 24,
              right: 24,
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: Strings.enterPhoneNumber,
              ),
              onChanged: (text) {},
              onSubmitted: (text) => Verify(),
              keyboardType: TextInputType.phone,
            ),
          ),
          Container(
            height: 48,
            margin: EdgeInsets.only(
              top: 16,
              left: 24,
              right: 24,
            ),
            child: RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(Strings.next),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
