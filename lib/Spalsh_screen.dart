
import 'dart:async';

import 'package:flutter/material.dart';

import 'Login/Login_confirmation.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    startTimer(); // initializes the starttimer method..
  }


  //Created starttimer method having suration as 3 second after 3 second it moves to registration page.
  startTimer()async{
    var duration=const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Login_confirmation()));
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container( padding: const EdgeInsets.all(20),
                  child: Image.asset("assets/splash2.gif")),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Text("RENTAL", style: TextStyle(color: Colors.red, fontSize: 25, fontWeight: FontWeight.w400),),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const CircularProgressIndicator(
                backgroundColor: Colors.white,
                strokeWidth: 1,
              )
            ],
          ),
        )

    );

  }
}
