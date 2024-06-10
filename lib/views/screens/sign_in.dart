import 'package:flutter/material.dart';
import 'package:flutter_day_34/views/screens/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Email',
                ),
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "Enter email!";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "Enter password!";
                  }
                  return null;
                },
              ),
            ),

            /// Sign In
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: FilledButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {}
                },
                child: const Text('Sign In'),
              ),
            ),
            const SizedBox(height: 20),

            /// Sign Up
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUp(),
                ),
              ),
              child: const Text('Sign Up'),
            )
          ],
        ),
      ),
    );
  }
}
