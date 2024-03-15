import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = "/sign_up_screen";

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Sign Up", style: TextStyle(color: Colors.orange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
              SizedBox(
                  height: 20,
              ),
              SizedBox(
                height: 45,
                width: MediaQuery
                    .of(context)
                    .size
                    .width * (9 / 10),
                child: TextField(
                  //inputFormatters: [
                  //FilteringTextInputFormatter.allow(RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9-]+\.[a-zA-Z]+")),
                  //],
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email",
                    suffixIcon: Icon(Icons.mail),
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
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: MediaQuery
                    .of(context)
                    .size
                    .width * (9 / 10),
                child: TextField(
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                    hintText: "Username",
                    suffixIcon: Icon(Icons.person_add),
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
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: MediaQuery
                    .of(context)
                    .size
                    .width * (9 / 10),
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
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      fixedSize: const Size(150, 40),
                      shape: StadiumBorder()),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
              ),
              SizedBox(
                height: 20,
              ), // Try to use a spacer
              GestureDetector(child: const Text(
                  "Already have an account? Log in.",
                  style: TextStyle(color: Colors.blue, fontSize: 15)),
                onTap: () {
                  Navigator.pop(context);
                },),
            ],
          )
      )
    );
  }
}
