import 'package:flutter/material.dart';
import 'package:qrcode_project/routes/qr_code_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:qrcode_project/routes/sch_credentials_route.dart';

class SignUpRoute extends StatefulWidget {
  const SignUpRoute({Key? key}) : super(key: key);

  @override
  State<SignUpRoute> createState() => _SignUpRouteState();
}

class _SignUpRouteState extends State<SignUpRoute> {
  TextEditingController phoneNumberController = TextEditingController();

  @override
  void dispose() {
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green.shade700,
        body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Image.asset(
                      "images/k2.png",
                      scale: 6,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 5),
                  child: Text(
                    "Enter your phone number",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 5),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(hintText: "Number:"),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        await FirebaseAuth.instance.verifyPhoneNumber(
                          phoneNumber: "+233506695053",
                          verificationCompleted:
                              (PhoneAuthCredential credential) async {
                            await FirebaseAuth.instance
                                .signInWithCredential(credential);
                          },
                          verificationFailed: (FirebaseAuthException e) {

                            print(e.code);
                            print(e.message);

                          },
                          codeSent: (String verificationId, int? resendToken) async {
                            // Update the UI - wait for the user to enter the SMS code
                            String smsCode = '111101';
                            print(verificationId);

                            // Create a PhoneAuthCredential with the code
                            // PhoneAuthCredential credential =
                            //     PhoneAuthProvider.credential(
                            //         verificationId: verificationId,
                            //         smsCode: smsCode);
                            //
                            // // Sign the user in (or link) with the credential
                            // await FirebaseAuth.instance.signInWithCredential(credential);
                            // print(verificationId);
                            // print(smsCode);
                          },
                          codeAutoRetrievalTimeout: (String verificationId) {},
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}
