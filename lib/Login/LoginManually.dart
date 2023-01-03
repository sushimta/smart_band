import 'package:flutter/material.dart';

import '../Navigation/Bottom_bar_and_navigation.dart';


class LoginManually extends StatefulWidget {
  const LoginManually({Key? key}) : super(key: key);

  @override
  State<LoginManually> createState() => _LoginManuallyState();
}

class _LoginManuallyState extends State<LoginManually> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFCC7722),
        title: Text("Login manually"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3, bottom: 10, right: 10, left: 10),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color:Color(0XFFCC7722), ),
                child: Card(

                  child: Padding(padding: EdgeInsets.all(5),
                    child: Column(

                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: 'Username?',

                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                          },
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.lock),
                            hintText: 'Password?',

                          ),
                          onSaved: (String? value) {
                            // This optional block of code can be used to run
                            // code when the user saves the form.
                          },
                          validator: (String? value) {
                            return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                          },
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10,),
            ElevatedButton(

                style: ElevatedButton.styleFrom(primary: Color(0XFFCC7722)),
                onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_navigation()));
                  const snackBar = SnackBar(
                    content: Text('Yay! A SnackBar!'),
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
