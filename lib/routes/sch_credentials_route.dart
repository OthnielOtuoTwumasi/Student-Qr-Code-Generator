import 'package:flutter/material.dart';
import 'package:qrcode_project/routes/sign_up_route.dart';

class SchoolCredentialsRoute extends StatelessWidget {
  const SchoolCredentialsRoute({Key? key}) : super(key: key);

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
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: Text(
                    "School Credentials",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(14, 4, 12, 7),
                  child: Text(
                    "Kindly fill in the fields below",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 5),
                  child: TextField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(hintText: "Name:"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(12, 3, 12, 5),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(hintText: "Index Number:"),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(12, 3, 12, 5),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(hintText: "Reference Number:"),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpRoute(),
                          ),
                        );
                      },
                      child: const Text(
                        "Next Page",
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
  }
}
