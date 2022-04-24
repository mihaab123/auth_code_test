import 'package:firebase_auth/firebase_auth.dart';

class FireBaseUtils {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  String verificationCode = "";

  signOut() {
    firebaseAuth.signOut();
  }

  verifyPhoneNumber(String phone) async {
    await firebaseAuth.verifyPhoneNumber(
      phoneNumber: phone,
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {},
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }
}
