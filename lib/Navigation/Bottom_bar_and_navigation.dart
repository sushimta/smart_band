import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../Home.dart';


class Bottom_navigation extends StatefulWidget {
  const Bottom_navigation({Key? key}) : super(key: key);

  @override
  State<Bottom_navigation> createState() => _Bottom_navigationState();
}


// This is object is for Changing the title of the app bar navigating through bottom navy bar...
String? txt;
int _selectedIndex = 0;

// This list is for changing the content after navigating through the screen...
final List<Widget> _widgetoptions= <Widget>[
  const Home(),
  const Home(),
  const Home(),

];

class _Bottom_navigationState extends State<Bottom_navigation> {





  @override
  Widget build(BuildContext context) {

    if(_selectedIndex==0){
      txt="Home";
    }
    else if(_selectedIndex==1){
      txt="My Order";
    }
    else {
      txt="Profile";}


    return Scaffold(
      appBar: AppBar(title: Text(txt.toString()),),

      ////////////// Here created Navigation Drawer...........................
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,

          children: <Widget>[
        UserAccountsDrawerHeader(
        decoration: const BoxDecoration(color:Colors.red),
        accountName: Text("Sushmita"),
        accountEmail: Text("Sushgupta7512@gmail.com"),
        currentAccountPicture: const CircleAvatar(
          backgroundImage: AssetImage('assets/cars4.jpg'),

        ),
      ),

            // ListTile(
            //   leading: const Icon(Icons.home, color: Colors.red),
            //   title: const Text("Home"),
            //   onTap: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Nav()));
            //   },
            // ),
            // const Divider(
            //   thickness: 0, // thickness of the line
            //   color: Colors.grey, // The color to use when painting the line.
            // ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.red,),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              thickness: 0, // thickness of the line
              color: Colors.grey, // The color to use when painting the line.
            ),


            ListTile(
              leading: const Icon(Icons.book_online, color: Colors.red,),
              title: const Text("My Orders"),
              onTap: () async {
                // Navigator.pop(context);
                // await Navigator.push(context, MaterialPageRoute(builder: (context)=>Nav()));
              },
            ),
            const Divider(
              thickness: 0, // thickness of the line
              color: Colors.grey, // The color to use when painting the line.
            ),

            ListTile(
              leading: const Icon(Icons.edit, color: Colors.red,),
              title: const Text("Update Address", style: TextStyle(color: Colors.black),),
              onTap: () {
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressReset()));
              },
            ),
            const Divider(
              thickness: 0, // thickness of the line
              color: Colors.grey, // The color to use when painting the line.
            ),


            ListTile(
              leading: const Icon(Icons.contacts, color: Colors.red,),
              title: const Text("Help & Support"),
              onTap: () {
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>Contact()));
              },
            ),
            const Divider(
              thickness: 0, // thickness of the line
              color: Colors.grey, // The color to use when painting the line.
            ),


            ListTile(
              leading: const Icon(Icons.feedback, color: Colors.red,),
              title: const Text("Feedback", style: TextStyle(color: Colors.black),),
              onTap: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=>feed()));

              },
            ),
            const Divider(
              thickness: 0, // thickness of the line
              color: Colors.grey, // The color to use when painting the line.
            ),


            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red,),
              title: const Text("Log out"),
              onTap: ()  async {



                // showDialog(
                //   context: context,
                //   builder: (ctx) =>  Padding(
                //     padding: const EdgeInsets.all(10.0),
                //     child: AlertDialog(backgroundColor: Colors.amber,
                //       shape: RoundedRectangleBorder(
                //
                //           borderRadius: BorderRadius.circular(20)),
                //       title: const Text(
                //         "Are you sure that you want to leave?", style: TextStyle(
                //           fontWeight: FontWeight.w400, color: Colors.black87, fontSize: 16),),
                //       actions: <Widget>[
                //         Padding(
                //           padding: const EdgeInsets.all(10.0),
                //           child: RaisedButton(shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(20)),
                //             onPressed: () async {
                //
                //               setState((){
                //                 isLoading=true;
                //
                //                 showDialog(
                //                   context: context,
                //
                //                   builder: (ctx) =>  Padding(
                //                     padding:  EdgeInsets.only(left: 50.0, right: 50.0, top: MediaQuery.of(context).size.height*0.375, bottom: MediaQuery.of(context).size.height*0.375),
                //                     child: AlertDialog(backgroundColor: Colors.transparent,
                //                       shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(20)),
                //                       content:  Center(
                //                         child: Image.asset("assets/loading.gif"),
                //                       ),
                //                     ),
                //                   ),
                //                 );
                //               });
                //               await Future.delayed(const Duration(seconds: 3));
                //               setState(() {
                //                 isLoading=false;
                //               });
                //
                //
                //
                //               //SharedPreferences sp = await SharedPreferences.getInstance();
                //               sp.remove("login");
                //               sp.remove("Loginotp");
                //               Navigator.pop(context);
                //               await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginWithPass()));
                //               // setState((){
                //               //   logoutfunc=true;
                //               //  });
                //
                //             },
                //             child: const Text(
                //               "Yes", style: TextStyle(color: Colors.black),),
                //           ),
                //         ),
                //
                //         Padding(
                //           padding: const EdgeInsets.only(top: 10.0, bottom: 10, right: 20, left: 3),
                //           child: RaisedButton(shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(20)),
                //             onPressed: () async {
                //               Navigator.pop(context);
                //               SharedPreferences sf = await SharedPreferences.getInstance();
                //             },
                //             child: const Text(
                //               "No", style: TextStyle(color: Colors.black),),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // );

              },
            ),


            Container( padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.175 , bottom: 10, left: 15,),
                child: Row( mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    CircleAvatar(backgroundColor: Colors.grey.shade400,radius: 2,),
                    const SizedBox(width: 2,),
                    InkWell(
                        onTap: (){
                         // Navigator.push(context, MaterialPageRoute(builder: (context)=>Terms_and_codition()));
                        }, child: const Text("Terms & condition", style: TextStyle(color: Colors.lightBlue, fontSize: 10, fontWeight: FontWeight.w300),)),

                    const SizedBox(width: 5,),

                    CircleAvatar(backgroundColor: Colors.grey.shade400,radius: 2,),
                    const SizedBox(width: 2,),
                    InkWell(
                        onTap: (){
                         // Navigator.push(context, MaterialPageRoute(builder: (context)=>Private_Policy()));
                        },
                        child: const Text("privacy policy", style: TextStyle(color: Colors.lightBlue,fontSize: 10, fontWeight: FontWeight.w300),)),

                    const SizedBox(width: 5,),

                    CircleAvatar(backgroundColor: Colors.grey.shade400,radius: 2,),
                    const SizedBox(width: 2,),
                    InkWell(
                        onTap: (){
                         // Navigator.push(context, MaterialPageRoute(builder: (context)=>Refund_policy()));

                        },
                        child: const Text("Refund policy", style: TextStyle(color: Colors.lightBlue,fontSize: 10, fontWeight: FontWeight.w300),)),

                  ],
                ))

          ],
        ),
      ),

      body: Center(
        child: _widgetoptions.elementAt(_selectedIndex),
      ),

      //////////////////// Here comes Bottom Navy bar..............................

      bottomNavigationBar: CurvedNavigationBar(
        color: const Color(0xffC24641),
        height: 50,
        backgroundColor: Colors.white,
        items:  const <Widget>[
          Icon(Icons.home, size: 20, color: Colors.white,),
          Icon(Icons.book_online, size: 20, color: Colors.white,),
          Icon(Icons.account_circle, size: 20, color: Colors.white,)
        ],

        onTap: (index)
        {
          setState(() {
            _selectedIndex = index;
          });
          //Handle button tap
        },
      ),

    );
  }
}
