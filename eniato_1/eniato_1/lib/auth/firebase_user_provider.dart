import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Eniato1FirebaseUser {
  Eniato1FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Eniato1FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Eniato1FirebaseUser> eniato1FirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Eniato1FirebaseUser>(
      (user) {
        currentUser = Eniato1FirebaseUser(user);
        return currentUser!;
      },
    );
