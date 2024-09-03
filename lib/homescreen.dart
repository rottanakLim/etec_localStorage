import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String? _email;
  String? _username;
  String? _password;
  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  void _loadUserData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _email = prefs.getString("email");
      _username = prefs.getString("username");
      _password = prefs.getString("password");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    title: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("Email       : $_email"),
                              Text("Username: $_username"),
                              Text("Password : $_password"),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: [
                              Text("Email       : $_email"),
                              Text("Username: $_username"),
                              Text("Password : $_password"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    trailing: Icon(Icons.notifications_on),
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
