import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
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
                  labelText: 'Name',
                ),
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "Enter name!";
                  }
                  return null;
                },
              ),
            ),
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
                child: const Text('Sign Up'),
              ),
            ),
            const SizedBox(height: 20),

            /// Sign Up
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Sign In'),
            )
          ],
        ),
      ),
    );
  }
}
