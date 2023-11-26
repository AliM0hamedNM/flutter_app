// ignore_for_file: prefer_const_constructors, unused_import
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0c8fad),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(155.0),
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
                    height: 17,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Color(0xFF0c8fad)),
                          hintText: "اسم المستخدم ",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Color(0xFF0c8fad)),
                          hintText: "رقم الهاتف",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Color(0xFF0c8fad)),
                          hintText: "العمر",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Color(0xFF0c8fad)),
                          hintText: "كلمة السر",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(66),
                    ),
                    width: 266,
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: TextField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Color(0xFF0c8fad)),
                          hintText: "اعادة كلمة السر",
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [

                  //     Container(

                  //       height: 50,
                  //       width: 130,
                  //       decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(66),

                  //       ),
                  //       child: Center(
                  //         child: Text(
                  //           "ذكر",
                  //           style: TextStyle(
                  //               color: Color(0xFF0c8fad),
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 18),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 10,
                  //     ),
                  //     Container(
                  //       child: Center(
                  //           child: Container(
                  //         child: Container(
                  //           height: 50,
                  //           width: 130,
                  //           decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               borderRadius: BorderRadius.circular(66),

                  //               ),
                  //           child: Center(
                  //               child: Text("انثى",
                  //                   style: TextStyle(
                  //                       color: Color(0xFF0c8fad),
                  //                       fontWeight: FontWeight.bold,
                  //                       fontSize: 18))),
                  //         ),
                  //       )),
                  //     ),
                  //   ],
                  // ),
                  ToggleSwitch(
                    minWidth: 130.0,
                    initialLabelIndex: 1,

                    cornerRadius: 50.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['Male', 'Female'],
                    icons: [Icons.man, Icons.woman],
                    // ignore: prefer_const_literals_to_create_immutables
                    activeBgColors: [
                      [Colors.blue],
                      [Colors.pink]
                    ],
                    onToggle: (index) {
                      debugPrint('switched to: $index');
                    },
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     // Radio(
                  //     //   value: 1,
                  //     //   groupValue: 1,
                  //     //   onChanged: (value) {},
                  //     //   activeColor: Colors.white,
                  //     // ),
                  //     SizedBox(
                  //       width: 10.0,
                  //     ),
                  //     Row(
                  //       children: [
                  //         Container(
                  //           decoration: BoxDecoration(
                  //             color: Colors.white,
                  //             borderRadius: BorderRadius.circular(66),
                  //           ),
                  //           width: 150,
                  //           padding: EdgeInsets.symmetric(horizontal: 60),
                  //           child: TextField(
                  //             textAlign: TextAlign.center,
                  //             decoration: InputDecoration(
                  //                 hintStyle: TextStyle(color: Color(0xFF0c8fad)),
                  //                 hintText: "ذكر",
                  //                 border: InputBorder.none),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //     SizedBox(
                  //       width: 5,
                  //     ),
                  //     Container(
                  //       decoration: BoxDecoration(
                  //         color: Colors.white,
                  //         borderRadius: BorderRadius.circular(66),
                  //       ),
                  //       width: 150,
                  //       padding: EdgeInsets.symmetric(horizontal: 60),
                  //       child: TextField(
                  //         textAlign: TextAlign.center,
                  //         decoration: InputDecoration(
                  //             hintStyle: TextStyle(color: Color(0xFF0c8fad)),
                  //             hintText: "انثى",
                  //             border: InputBorder.none),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  SizedBox(
                    height: 17,
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



// Scaffold(
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

//               ),
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