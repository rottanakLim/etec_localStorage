import 'package:etec_flutter_application_4/startscreen1.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter SharePreference",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Startscreen1(),
    );
  }
}

///// New screen (Login)

// class _LoginScreen extends StatefulWidget {
//   const _LoginScreen({super.key});

//   @override
//   State<_LoginScreen> createState() => __LoginScreenState();
// }

// class __LoginScreenState extends State<_LoginScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _username = TextEditingController();

//   void _login() async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.setString("email", _emailController.text);
//     prefs.setString("username", _username.text);
//     prefs.setString("password", _passwordController.text);
//     // Navigator.of(context).pushReplacement(
//     //   MaterialPageRoute(
//     //     builder: (context) => Homescreen(),
//     //   ),
//     // );
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => Homescreen(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter SharePreference"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _emailController,
//               decoration: InputDecoration(
//                 labelText: "email",
//                 prefixIcon: Icon(Icons.email),
//               ),
//             ),
//             TextField(
//               controller: _username,
//               decoration: InputDecoration(
//                 labelText: "Username",
//                 prefixIcon: Icon(Icons.person),
//               ),
//             ),
//             TextField(
//               controller: _passwordController,
//               decoration: InputDecoration(
//                 labelText: "Password",
//                 prefixIcon: Icon(Icons.lock),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             ElevatedButton(
//               onPressed: _login,
//               child: Text("Login"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
