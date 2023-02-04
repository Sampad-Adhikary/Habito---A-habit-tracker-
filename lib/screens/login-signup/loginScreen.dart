// // ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';
// import 'package:habito/constants/routes.dart';

// class Login extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => InitState();
// }

// class InitState extends State<Login> {
//   @override
//   Widget build(BuildContext context) {
//     return initWidget();
//   }

//   Widget initWidget() {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Center(
//               child: Container(
//                 width: 400,
//                 height: 400,
//                 child: Container(
//                     margin: EdgeInsets.only(left: 30, right: 30, top: 20),
//                     child: Image.asset("assets/images/habito-logo.png")),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 20, right: 20),
//               padding: EdgeInsets.only(left: 20, right: 20),
//               decoration: BoxDecoration(
//                 // borderRadius: BorderRadius.circular(15),
//                 // color: Colors.grey[300],
//                 // boxShadow: [
//                 //   BoxShadow(
//                 //     offset: Offset(1, 2),
//                 //     blurRadius: 5,
//                 //   )
//                 // ],
//                 color: Colors.black26, borderRadius: BorderRadius.circular(10),
//               ),
//               alignment: Alignment.center,
//               child: TextField(
//                 style: TextStyle(fontSize: 20),
//                 cursorColor: Color.fromRGBO(141, 74, 248, 50),
//                 decoration: InputDecoration(
//                     icon: Icon(
//                       Icons.email,
//                       color: Color.fromRGBO(141, 74, 248, 50),
//                     ),
//                     hintText: "Enter Email",
//                     enabledBorder: InputBorder.none,
//                     focusedBorder: InputBorder.none),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 20, right: 20, top: 20),
//               padding: EdgeInsets.only(left: 20, right: 20),
//               decoration: BoxDecoration(
//                 // borderRadius: BorderRadius.circular(15),
//                 // color: Colors.grey[300],
//                 color: Colors.black26, borderRadius: BorderRadius.circular(10),
//                 // boBoxShadow(
//                 //     offset: Offset(1, 1),
//                 //     blurRadius: 1,
//                 //   )xShadow: [

//                 // ],
//               ),
//               alignment: Alignment.center,
//               child: TextField(
//                 style: TextStyle(fontSize: 20),
//                 obscureText: true,
//                 cursorColor: Color.fromRGBO(141, 74, 248, 50),
//                 decoration: InputDecoration(
//                     icon: Icon(Icons.vpn_key,
//                         color: Color.fromRGBO(141, 74, 248, 50)),
//                     hintText: "Enter Password",
//                     enabledBorder: InputBorder.none,
//                     focusedBorder: InputBorder.none),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.only(top: 15, right: 30),
//               alignment: Alignment.centerRight,
//               child: GestureDetector(
//                 child: Text("Forget Password?"),
//                 onTap: () =>
//                     {Navigator.pushNamed(context, Routes.resetPassword)},
//               ),
//             ),
//             GestureDetector(
//               onTap: () => {Navigator.pushNamed(context, Routes.appBar)},
//               child: Container(
//                 margin: EdgeInsets.only(left: 20, right: 20, top: 20),
//                 alignment: Alignment.center,
//                 height: 54,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                     (Color.fromRGBO(141, 74, 248, 70)),
//                     (Color.fromRGBO(141, 74, 248, 30))
//                   ], begin: Alignment.centerLeft, end: Alignment.centerRight),
//                   borderRadius: BorderRadius.circular(30),
//                   boxShadow: [
//                     BoxShadow(
//                       offset: Offset(1, 2),
//                     )
//                   ],
//                 ),
//                 child: Text(
//                   "LOG IN",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                       color: Colors.white),
//                 ),
//               ),
//             ),
//             Column(
//               children: <Widget>[
//                 Container(
//                   margin: EdgeInsets.only(left: 20, right: 20, top: 20),
//                   alignment: Alignment.center,
//                   height: 50,
//                   child: Text(
//                     "or login with",
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                 ),
//                 Container(
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                           child: Image.asset(
//                             "assets/images/facebook.png",
//                             height: 50,
//                             width: 50,
//                           ),
//                           margin:
//                               EdgeInsets.only(left: 20, right: 20, top: 20)),
//                       Container(
//                           child: Image.asset(
//                             "assets/images/google.png",
//                             height: 50,
//                             width: 50,
//                           ),
//                           margin:
//                               EdgeInsets.only(left: 20, right: 20, top: 20)),
//                       Container(
//                           child: Image.asset(
//                             "assets/images/twitter.png",
//                             height: 50,
//                             width: 50,
//                           ),
//                           margin:
//                               EdgeInsets.only(left: 20, right: 20, top: 20)),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(top: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(left: 20, right: 5, top: 20),
//                         child: Text(
//                           "Don't have an account?",
//                           style: TextStyle(fontSize: 20),
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () =>
//                             {Navigator.pushNamed(context, Routes.signUpSCreen)},
//                         child: Container(
//                           margin: EdgeInsets.only(top: 20),
//                           child: Text(
//                             "Sign Up",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                               color: Color.fromRGBO(141, 74, 248, 70),
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
