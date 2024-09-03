import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storescreen1 extends StatefulWidget {
  const Storescreen1({super.key});

  @override
  State<Storescreen1> createState() => _Storescreen1State();
}

class _Storescreen1State extends State<Storescreen1> {
  String? _firstName;
  String? _lastName;
  String? _gender;
  String? _username;
  String? _email;
  String? _password;

  @override
  void initState() {
    super.initState();
    displayData();
  }

  void displayData() async {
    final pref = await SharedPreferences.getInstance();
    setState(() {
      _firstName = pref.getString("firstName");
      _lastName = pref.getString("lastName");
      _gender = pref.getString("gender");
      _username = pref.getString("username");
      _email = pref.getString("email");
      _password = pref.getString("password");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("FirstName"),
                      ],
                    ),
                    Container(
                      height: 60,
                      width: 180,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, top: 15),
                        child: Text(
                          "$_firstName",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("LastName"),
                      ],
                    ),
                    Container(
                      height: 60,
                      width: 180,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, top: 15),
                        child: Text(
                          "$_lastName",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Gender"),
                  ],
                ),
                Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 15),
                    child: Text(
                      "$_gender",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Username"),
                  ],
                ),
                Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 15),
                    child: Text(
                      "$_username",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Email"),
                  ],
                ),
                Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 15),
                    child: Text(
                      "$_email",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Password"),
                  ],
                ),
                Container(
                  height: 60,
                  width: 380,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, top: 15),
                    child: Text(
                      "$_password",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
