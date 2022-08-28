import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrScannerRoute extends StatelessWidget {
  const QrScannerRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green.shade700,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 12),
              child: Image.asset(
                "images/k2.png",
                scale: 3,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "POINT TO SCANNER TO SCAN",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(12, 5, 12, 10),
                  child: Text(
                    "Point your phone with the QR code to the scanning device to scan and register your details",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                    child: QrImage(
                      size: MediaQuery.of(context).size.width * 0.6,
                      data: "HI MY NAME IS OTHNIEL",
                      version: QrVersions.auto,
                      backgroundColor: Colors.yellow,
                      padding: const EdgeInsets.all(15),
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
