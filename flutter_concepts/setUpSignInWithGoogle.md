## Step 1: Install `google_sign_in` package
## Step 2: Create Firebase Project then create Firebase app into it.
## Step 3: Add Firebase to your Android project
- Follow these step (https://firebase.google.com/docs/android/setup)
>[!WARNING]
>With option 1 -> Step 3 -> insert those code in **android/settings.gradle** then  **android/app/build.gradle**
## Step 4: Add  `SHA1` & `SHA-256` to Firebase's App in Firebase project


## How to get `SHA1` & `SHA-256` KEY
- Open android folder of your project in a new Android Studio Screen
- Open terminal and type `./gradlew signingReport`

>[!NOTE]
>Project in firebase console will automatically generated to Google cloud console if you have done these things properly.

## How to get `idToken` to sent to Backend
```dart
Future<void> _handleSignIn() async {
    try {
      final GoogleSignInAccount? user = await _googleSignIn.signIn();
      if (user == null) return; // Người dùng hủy đăng nhập

      final GoogleSignInAuthentication auth = await user.authentication;

      final String? idToken = auth.idToken;
      Clipboard.setData(ClipboardData(text: idToken!));
    } catch (error) {
      print('Sign-in error: $error');
    }
  }
```
>[!WARNING]
>When backend throw an error like this **Wrong recipient, payload audience != requiredAudience**
Make sure your backend use the proper **GOOGLE_CLIENT_ID** to verify.
- How to get this proper **GOOGLE_CLIENT_ID**
    - Just pass the idToken to JWT.IO and then copy **aud's value** then use it for backend