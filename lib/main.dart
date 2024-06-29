import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(AdolfLoginApp());
}

class AdolfLoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passcontroller = TextEditingController();
  bool isObscuretext = true;
  @override
  void initState() {
    super.initState();
    isObscuretext = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SIGN IN',
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
        leading: const Icon(Icons.arrow_back_ios),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'H★MILTON',
                    style: TextStyle(fontSize: 46),
                  ),
                  SizedBox(height: 40),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Email Address')),
                  TextFormField(
                    controller: _emailcontroller,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an email';
                      } else if (!isValidEmail(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  Align(
                      alignment: Alignment.centerLeft, child: Text('Password')),
                  TextFormField(
                    controller: _passcontroller,
                    obscureText: isObscuretext,
                    decoration: InputDecoration(
                      hintText: '8+ characters',
                      border: const OutlineInputBorder(),
                      suffixIcon: TextButton(
                        onPressed: () {
                          setState(
                            () {
                              isObscuretext = !isObscuretext;
                            },
                          );
                        },
                        child: Text(
                          isObscuretext ? 'show' : 'hide',
                          style: const TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 16),
                        ),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 8) {
                        return 'Password should contain 8 characters';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 201, 187, 187),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.amber,
                      padding:
                          EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      }
                    },
                    child: Text('Log in'),
                  ),
                  SizedBox(height: 20),
                  Text('Haven’t signed up yet?',
                      style: TextStyle(color: Colors.amber)),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Create an acount',
                      style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool isValidEmail(String email) {
    const String emailPattern =
        r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$';
    final RegExp regex = RegExp(emailPattern);
    return regex.hasMatch(email);
  }

  bool isValidPassword(String password) {
    const String passwordPattern =
        r'^(?=.[0-9])(?=.[!@#$%^&*()_+=<>?{}~\-]).{8,}$';
    final RegExp regex = RegExp(passwordPattern);
    return regex.hasMatch(password);
  }
}
