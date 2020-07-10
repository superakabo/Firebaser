import 'package:firebaser/providers/startup_provider.dart';
import 'package:firebaser/utils/enums.dart';
import 'package:firebaser/widgets/auth/auth.dart';
import 'package:firebaser/widgets/home/home.dart';
import 'package:firebaser/widgets/startup/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Startup extends StatefulWidget {
  @override
  _StartupState createState() => _StartupState();
}

class _StartupState extends State<Startup> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      Provider.of<StartupProvider>(context, listen: false).userAuthController.stream.listen((event) {
        if (event == AuthState.Authenticated) {
          Future.delayed(Duration(seconds: 3));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<StartupProvider>(
      builder: (_, provider, __) {
        switch (provider.state) {
          case AuthState.Authenticated:
            return Home();
          case AuthState.Unauthenticated:
            return Auth();
          default:
            return Splash();
        }
      },
    );
  }
}
