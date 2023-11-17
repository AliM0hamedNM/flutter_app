// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF2296f3),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(230.0),
          child: AppBar(
            centerTitle: true,
            flexibleSpace: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50.0),
                  bottomLeft: Radius.circular(50.0)),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/9.jpg'), fit: BoxFit.fill),
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
        extendBodyBehindAppBar: true,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF259eb1)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: Text(
                  "تسجيل الدخول كمريض",
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
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: Text(
                  "تسجيل الدخول كطبيب",
                  style: TextStyle(fontSize: 24, color: Color(0xFF259eb1)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// return MaterialApp(
//         home: Scaffold(
//       backgroundColor: Color(0xFF2296f3),
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(230.0),
//         child: AppBar(
//           centerTitle: true,
//           flexibleSpace: ClipRRect(
//             borderRadius: const BorderRadius.only(
//                 bottomRight: Radius.circular(50.0),
//                 bottomLeft: Radius.circular(50.0)),
//             child: Container(
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage('images/7.png'), fit: BoxFit.fill),
//               ),
//             ),
//           ),
//           title: const Text(
//             '',
//             style: TextStyle(
//               color: Color(0xFF2296f3),
//             ),
//           ),
//           backgroundColor: Color(0xFF2296f3),
//           shape: const RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//             bottomRight: Radius.circular(50.0),
//             bottomLeft: Radius.circular(50.0),
//           )),
//         ),
//       ),
//       extendBodyBehindAppBar: true,
//       body: Container(
//         child: const Padding(
//           padding: EdgeInsets.symmetric(horizontal: 24.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               SizedBox(
//                 height: 50.0,
//               ),
//               Material(
//                 elevation: 5,
//                 color: Color(0xFF259eb1),
//                 borderRadius: BorderRadius.all(Radius.circular(22)),
//                 child: MaterialButton(
//                   onPressed: null,
//                   minWidth: 200,
//                   height: 42,
//                   child: Text(
//                     'تسجيل الدخول كمريض',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 25,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 35.0,
//               ),
//               Material(
//                 elevation: 5,
//                 color: Colors.white,
//                 borderRadius: BorderRadius.all(Radius.circular(22)),
//                 child: MaterialButton(
//                   onPressed: null,
//                   minWidth: 200,
//                   height: 42,
//                   child: Text(
//                     'تسجيل الدخول كطبيب',
//                     style: TextStyle(
//                       color: Color(0xFF259eb1),
//                       fontSize: 25,
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     ));

// //اذا الواجهة تفاعلية
// class Exampage extends StatefulWidget {
//   const Exampage({super.key});

//   @override
//   State<Exampage> createState() => _ExampageState();
// }

// class _ExampageState extends State<Exampage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Column(
//       children: [
//         Expanded(
//           child: Column(
//             children: [
//               Image(
//                 image: AssetImage(
//                   'images/3.jpg'
//                 ),
//                 height: 300.0,
//                 width:400.0,
//               ),
//               SizedBox(
//                 height: 20.0,
//                 ),
//               Text('عدد الكواكب ',
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 24.0,
//               ),),
            
//             ],
//           ),
//         ),
        
        
      
//       ],
//     );
//   }
// }
