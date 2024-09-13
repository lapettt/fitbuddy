import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController {
  var googleSignin = GoogleSignIn();
  var googleAccount = Rx<GoogleSignInAccount?>(null);
  var firebaseUser = Rx<User?>(null); // Firebase Authentication user

  // Firebase Authentication instance
  FirebaseAuth auth = FirebaseAuth.instance;

  // Login function with Firebase Authentication
  login() async {
    try {
      // Sign in with Google
      googleAccount.value = await googleSignin.signIn();

      if (googleAccount.value != null) {
        // Obtain Google Sign-In credentials
        final GoogleSignInAuthentication googleAuth =
            await googleAccount.value!.authentication;

        // Create a new credential for Firebase Authentication
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        // Sign in to Firebase Authentication using the credential
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);

        // Assign the signed-in Firebase user
        firebaseUser.value = userCredential.user;

        print("Firebase User UID: ${firebaseUser.value?.uid}");
      }
    } catch (e) {
      print('Error during login: $e');
    }
  }

  logout() async {
    await googleSignin.signOut();
    await auth.signOut(); // Sign out from Firebase Authentication
    googleAccount.value = null;
    firebaseUser.value = null;
  }

  String? getDisplayName() {
    return googleAccount.value?.displayName;
  }

  String? getEmail() {
    return googleAccount.value?.email;
  }

  String? getID() {
    return googleAccount.value?.id;
  }

  String? getFirebaseUID() {
    return firebaseUser.value?.uid; // Firebase UID
  }
}
