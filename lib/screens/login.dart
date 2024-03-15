import 'package:flutter/material.dart';
import 'package:list_app/screens/list_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/login";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Expanded(
                child: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * (2 / 10),
          ),
          const Text("Welcome to BCD News",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 45,
            width: MediaQuery.of(context).size.width * (9 / 10),
            child: TextField(
              controller: usernamecontroller,
              decoration: InputDecoration(
                hintText: "Username",
                suffixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.blue, width: 3),
                  gapPadding: 10,
                ),
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 45,
            width: MediaQuery.of(context).size.width * (9 / 10),
            child: TextField(
              controller: passwordcontroller,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.blue, width: 3),
                  gapPadding: 10,
                ),
                hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * (7 / 20),
          ),
          ElevatedButton(
              onPressed: () {
                if (usernamecontroller.text.isEmpty || passwordcontroller.text.isEmpty) {
                  const snackBar = SnackBar(
                    content: Text('Please fill in all of the fields>'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  return;
                }
                Navigator.pushNamed(context, ListScreen.routeName);
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  fixedSize: const Size(150, 40),
                  shape: StadiumBorder()),
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
          SizedBox(
            height:10,
          ),
          GestureDetector(child: const Text("Don't have an account? Sign up now.", style: TextStyle(color:Colors.blue,fontSize:15)), onTap: () {
            Navigator.pushNamed(context, '/sign_up_screen');
          }, ),
        ],
      ),
    ))));
  }
}
