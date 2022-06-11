import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NFTyPicFirebaseUser {
  NFTyPicFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

NFTyPicFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NFTyPicFirebaseUser> nFTyPicFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<NFTyPicFirebaseUser>(
        (user) => currentUser = NFTyPicFirebaseUser(user));
