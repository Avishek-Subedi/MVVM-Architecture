import 'package:flutter/material.dart';
import 'package:learingin_architecture/utils/routes/routes_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context,
                RoutesName.home); // better way of navigating to next screen
          },
          child: const Text("Click Me"),
        ),
      ),
    );
  }
}
