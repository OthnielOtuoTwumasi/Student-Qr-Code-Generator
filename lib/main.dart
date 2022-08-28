import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:qrcode_project/routes/qr_code_route.dart';
import 'package:qrcode_project/routes/sch_credentials_route.dart';
import 'package:qrcode_project/routes/sign_up_route.dart';
import 'package:qrcode_project/theme_data.dart';

//void main()=>runApp(const QrCodeApp());
Future main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const QrCodeApp());
}

class QrCodeApp extends StatelessWidget {
  const QrCodeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SignUpRoute(),
      theme: QrThemeData.themeData,
    );
  }
}
