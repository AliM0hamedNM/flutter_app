

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          title: Text(
            "Welcome",
            style: TextStyle(
                fontSize: 30,
                fontFamily: "myfont",
                fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: Text(
                  "login",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purple[100]),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: Text(
                  "SIGNUP",
                  style: TextStyle(fontSize: 17, color: Colors.grey[850]),
                ),
              ),
            ],
          ),
        ));
  }
}

//  return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           width: 400,
//           height: 400,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("assets/images/banner.png"),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Column(
//             children: [
//               Text(
//                 "عيادتي | CLINIC",
//                 style: TextStyle(fontSize: 24),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Button(
//                     onPressed: () {
//                       // Do something
//                     },
//                     child: Text("تسجيل الدخول كمريض"),
//                   ),
//                   SizedBox(width: 10),
//                   Button(
//                     onPressed: () {
//                       // Do something
//                     },
//                     child: Text("تسجيل الدخول كطبيب"),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );



// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';

// class Login extends StatelessWidget {

//   const Login({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.pop(context);
//         },
        
//         backgroundColor: Colors.purple[400],
//         child: Icon(Icons.home),
//       ),
//       appBar: AppBar(
//         title: Text(
//           "Sign up",
//           style: TextStyle(fontSize: 30, fontFamily: "myfont", fontWeight: FontWeight.w500),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.purple[300],
//       ),
//       body: 
//       Center(
//         child: SingleChildScrollView(
//           child:SizedBox(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 17,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.purple[100],
//                 borderRadius: BorderRadius.circular(66),
//               ),
//               width: 266,
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               child: TextField(
//                 decoration: InputDecoration(
//                     icon: Icon(
//                       Icons.person,
//                       color: Colors.purple[800],
//                     ),
//                     hintText: ": ألاسم الثلاثي  ",
//                     border: InputBorder.none),
//               ),
//             ),
//             SizedBox(
//               height: 17,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.purple[100],
//                 borderRadius: BorderRadius.circular(66),
//               ),
//               width: 266,
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               child: TextField(
//                 decoration: InputDecoration(
//                     icon: Icon(
//                       Icons.email,
//                       color: Colors.purple[800],
//                     ),
//                     hintText: ": الايميل ",
//                     border: InputBorder.none),
//               ),
//             ),
//             SizedBox(
//               height: 17,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.purple[100],
//                 borderRadius: BorderRadius.circular(66),
//               ),
//               width: 266,
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               child: TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                     suffix: Icon(
//                       Icons.visibility,
//                       color: Colors.purple[900],
//                     ),
//                     icon: Icon(
//                       Icons.lock,
//                       color: Colors.purple[800],
//                       size: 19,
//                     ),
//                     hintText: ": كلمة المرور ",
//                     border: InputBorder.none),
//               ),
//             ),
            
//             SizedBox(
//               height: 17,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.purple[100],
                
//                 borderRadius: BorderRadius.circular(66),


// ),
//               width: 266,
//               padding: EdgeInsets.symmetric(horizontal: 16),
              
//               child: IntlPhoneField(
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
                    
//                     hintText: "ادخل الرقم : ",
//                     border: InputBorder.none),
//               ),
//             ),
//             SizedBox(
//               height: 17,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, "/");
//               },
               
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all(Colors.purple),
//                 padding: MaterialStateProperty.all(
//                     EdgeInsets.symmetric(horizontal: 91, vertical: 10)),
//                 shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(27))),
//               ),
//               child: Text(
//                 "Sign up",
//                 style: TextStyle(fontSize: 22),
//               ),
//             ),
//           ],
//         ),
//       ), 

          
//         ),
//       )
      
//     );
//   }
// }