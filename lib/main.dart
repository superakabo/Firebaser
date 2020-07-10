import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebaser/providers/auth_provider.dart';
import 'package:firebaser/providers/home_provider.dart';
import 'package:firebaser/providers/startup_provider.dart';
import 'package:firebaser/utils/strings.dart';
import 'package:firebaser/widgets/startup/startup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  Crashlytics.instance.enableInDevMode = true;
  FlutterError.onError = Crashlytics.instance.recordFlutterError;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StartupProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: MaterialApp(
        title: Strings.firebaser,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Startup(),
      ),
    );
  }
}
