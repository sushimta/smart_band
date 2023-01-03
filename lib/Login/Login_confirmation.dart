import 'package:flutter/material.dart';
import 'LoginManually.dart';
import 'LoginViaBarcode.dart';

class Login_confirmation extends StatefulWidget {
  const Login_confirmation({Key? key}) : super(key: key);

  @override
  State<Login_confirmation> createState() => _Login_confirmationState();
}

class _Login_confirmationState extends State<Login_confirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4),
            child: const Text("Select the way that you want to Login!", style: TextStyle(color: Colors.black, fontSize: 18, wordSpacing:2, fontWeight: FontWeight.w500),),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
              child: FlatButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: Color(0XFFCC7722),
                textColor: Colors.white,
                child: const Text('Barcode Scan',),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginViaBarcode()));
                },
              ),
            ),
          ),

          const SizedBox(height: 10,),

          FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Color(0XFFCC7722),
            textColor: Colors.white,
            child: const Text('Login via Password'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginManually()));
            },
          ),


        ],
      ),

    );
  }
}



