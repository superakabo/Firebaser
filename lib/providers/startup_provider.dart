import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaser/utils/enums.dart';
import 'package:flutter/foundation.dart';

class StartupProvider with ChangeNotifier {
  final userAuthController = StreamController<AuthState>.broadcast();

  AuthState state = AuthState.Authenticating;

  StartupProvider() {
    checkLogin();
  }

  @override
  dispose() {
    userAuthController.close();
    super.dispose();
  }

  Future<void> checkLogin() async {
    final firebaseUser = await FirebaseAuth.instance.currentUser();
    final isSignedIn = (firebaseUser?.uid ?? false);
    state = (isSignedIn) ? AuthState.Authenticated : AuthState.Unauthenticated;
    userAuthController.add(state);
    notifyListeners();
  }
}
