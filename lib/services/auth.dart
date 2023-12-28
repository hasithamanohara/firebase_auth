import 'package:firebase_auth/firebase_auth.dart';
import 'package:fireflutter/models/usermode.dart';

class AuthServices {
  //instatnce for acces firebase methods
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //user model cretae with uid
  UserModel? _userWithFirebaseUid(User? user){
    return user!= null? UserModel(uid: user.uid) : null;
  }

  //Singn in as aononymasly
  Future signInAnonymasly() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  //Sign in using email and password
  //Sign in using gmail
  //Sign out
}
