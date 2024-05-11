import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as models;
import 'package:flutter/material.dart';
import 'package:nike_app_clone/ui/signup/signup_screen4.dart';

class AppWriteProvider {
  Client client = Client();
  Account? account;
  Databases? databases;
  AppWriteProvider() {
    client
        .setEndpoint("https://cloud.appwrite.io/v1")
        .setProject("663b3137000dc6d6fb38")
        .setSelfSigned(status: true);
    account = Account(client);
    databases = Databases(client);
  }

  Future<bool> checkUserSignUp(String text) async {
    try {
      // Check if user exists with the given email
      await account!.get();
      return true; // User exists
    } catch (e) {
      return false; // User does not exist
    }
  }

  Future<dynamic> sendVerificationCode(String email) async {
    try {
      // Send verification code to the user's email
      final sessionToken =
          await account!.createEmailToken(userId: ID.unique(), email: email);

      // final userId = sessionToken.userId;
      return sessionToken;
    } catch (e) {
      print('Error sending verification code: $e');
      // Handle error sending verification code
    }
  }

  Future<void> verifyOtp(BuildContext context, String email, String otp) async {
    try {
      await account!.createEmailPasswordSession(email: email, password: otp);
      // Verification successful, navigate to next screen
      Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (context) => const SignUpScreen4(),
        ),
      );
    } catch (e) {
      // Verification failed
      print('Error verifying OTP: $e');
    }
  }

  Future<models.Document> signup(Map map) {
    final response = databases!.createDocument(
        databaseId: "663c6859002a6ebf768f",
        collectionId: "663c68660011875855db",
        documentId: ID.unique(),
        data: {
          "firstName": map["firstName"],
          "surName": map["surName"],
          "password": map["password"],
          "dob": map["dob"],
        });
    return response;
  }
}
