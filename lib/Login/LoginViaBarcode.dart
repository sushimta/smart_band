import 'package:flutter/material.dart';

class LoginViaBarcode extends StatefulWidget {
  const LoginViaBarcode({Key? key}) : super(key: key);

  @override
  State<LoginViaBarcode> createState() => _LoginViaBarcodeState();
}

class _LoginViaBarcodeState extends State<LoginViaBarcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login via barcode"), backgroundColor: Color(0XFFCC7722),),
    );
  }
}
