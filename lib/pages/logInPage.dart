import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        const Text(
          "Welcome",
          style: TextStyle(fontSize: 24.0),
        ),
        const SizedBox(height: 20.0),
        Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Username cannot be empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  obscureText: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password Cannot be empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print("Processing Data....");
                      }
                    },
                    child: const Text("Log In"))
              ],
            ))
      ]),
    );
  }
}
