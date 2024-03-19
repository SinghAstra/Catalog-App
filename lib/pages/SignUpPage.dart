import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  var password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            color: Colors.pink,
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  FadeInUp(
                    duration: const Duration(seconds: 1),
                    child: const Text("Sign Up",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1200),
                    child: Text("Create an account, It's free",
                        style:
                            TextStyle(fontSize: 15, color: Colors.grey[700])),
                  ),
                ]),
              ],
            ),
          ),
        ));
  }
  Widget makeInput({label, obscureText = false}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    )
  }
}
