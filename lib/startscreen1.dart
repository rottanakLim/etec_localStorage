import 'package:etec_flutter_application_4/storescreen1.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Startscreen1 extends StatefulWidget {
  const Startscreen1({super.key});

  @override
  State<Startscreen1> createState() => _Startscreen1State();
}

class _Startscreen1State extends State<Startscreen1> {
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _gender = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void Register() async {
    final pref = await SharedPreferences.getInstance();
    pref.setString("firstName", _firstName.text);
    pref.setString("lastName", _lastName.text);
    pref.setString("gender", _gender.text);
    pref.setString("username", _username.text);
    pref.setString("email", _email.text);
    pref.setString("password", _password.text);

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => Storescreen1(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                controller: _firstName,
                decoration: InputDecoration(
                  labelText: "FirstName",
                ),
              ),
              TextField(
                controller: _lastName,
                decoration: InputDecoration(
                  labelText: "LastName",
                ),
              ),
              TextField(
                controller: _gender,
                decoration: InputDecoration(
                  labelText: "Gender",
                ),
              ),
              TextField(
                controller: _username,
                decoration: InputDecoration(
                  labelText: "Username",
                ),
              ),
              TextField(
                controller: _email,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
              TextField(
                controller: _password,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
              ),
              SizedBox(
                height: 200,
              ),
              ElevatedButton(
                onPressed: () {
                  Register();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  this._firstName.clear();
                  this._lastName.clear();
                  this._gender.clear();
                  this._username.clear();
                  this._email.clear();
                  this._password.clear();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
