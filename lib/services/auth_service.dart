import 'package:firebase_auth/firebase_auth.dart';

import 'auth_status.dart';

class AuthenticationService {
  final _auth = FirebaseAuth.instance;
  var _status ;

  Future<AuthStatus> resetPassword({required String email}) async {
    _status = await _auth
        .sendPasswordResetEmail(email: email)
        .then((value) =>  _status = AuthStatus.successful)
        .catchError((e) => _status = AuthExceptionHandler.handleAuthException(e));
    return _status;
  }
}