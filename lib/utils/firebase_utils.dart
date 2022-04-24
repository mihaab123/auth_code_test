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

  verifyEmail(String email) async {
    var actionCodeSettings = ActionCodeSettings(
      url: 'https://authtesttest.page.link/finishSignUp',
      dynamicLinkDomain: 'authtesttest.page.link',
      androidPackageName: 'com.example.auth_code_test',
      androidInstallApp: true,
      androidMinimumVersion: '12',
      iOSBundleId: 'com.example.auth_code_test',
      handleCodeInApp: true,
    );
    await firebaseAuth.sendSignInLinkToEmail(
        email: email, actionCodeSettings: actionCodeSettings);
  }
}
