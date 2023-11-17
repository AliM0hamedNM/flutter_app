// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0c8fad),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140.0),
        child: AppBar(
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50.0),
                bottomLeft: Radius.circular(50.0)),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/10.jpg'), fit: BoxFit.fill),
              ),
            ),
          ),
          title: const Text(
            '',
            style: TextStyle(
              color: Color(0xFF2296f3),
            ),
          ),
          backgroundColor: Color(0xFF2296f3),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50.0),
            bottomLeft: Radius.circular(50.0),
          )),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'انشاء الحساب',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintStyle:
                              TextStyle(height: 3, color: Color(0xFF0c8fad)),
                          hintText: "اسم الطبيب ",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    height: 40,
                    padding: EdgeInsets.only(top: 13),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintStyle:
                              TextStyle(height: 2, color: Color(0xFF0c8fad)),
                          hintText: "التخصص",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    height: 40,
                    padding: EdgeInsets.only(top: 10),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintStyle:
                              TextStyle(height: 2, color: Color(0xFF0c8fad)),
                          hintText: "رقم الهاتف",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    height: 40,
                    padding: EdgeInsets.only(top: 10),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintStyle:
                              TextStyle(height: 2, color: Color(0xFF0c8fad)),
                          hintText: "الشهادات والخبرات",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    height: 40,
                    padding: EdgeInsets.only(top: 10),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintStyle:
                              TextStyle(height: 2, color: Color(0xFF0c8fad)),
                          hintText: "عنوان العيادة",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    height: 40,
                    padding: EdgeInsets.only(top: 10),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintStyle:
                              TextStyle(height: 2, color: Color(0xFF0c8fad)),
                          hintText: "رقم العيادة",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    height: 40,
                    padding: EdgeInsets.only(top: 10),
                    child: TextField(
                      textAlign: TextAlign.center,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintStyle:
                              TextStyle(height: 2, color: Color(0xFF0c8fad)),
                          hintText: "كلمة السر",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    height: 40,
                    padding: EdgeInsets.only(top: 10),
                    child: TextField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintStyle:
                              TextStyle(height: 2, color: Color(0xFF0c8fad)),
                          hintText: "اعادة كلمة السر",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    height: 40,
                    padding: EdgeInsets.only(top: 10),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintStyle:
                              TextStyle(height: 2, color: Color(0xFF0c8fad)),
                          hintText: "يرجى رفع مايثبت انك طبيب",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/");
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 3, 202, 247)),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 50, vertical: 5)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27))),
                    ),
                    child: Text(
                      "انشاءالحساب",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
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