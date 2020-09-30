import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class UserAuth {
  FirebaseAuth auth = FirebaseAuth.instance;



  Future<bool>registerUser(String email, String password) async {
    try {
      print('neki');
      final FirebaseUser user = (await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      ))
          .user;

      return Future<bool>.value(true);
    } catch (e) {
      print(e.toString());
      return Future<bool>.value(false);
    }
  }
}
