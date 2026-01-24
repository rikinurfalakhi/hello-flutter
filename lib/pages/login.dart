import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hello_flutter/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  String registeredEmail = 'riki@gmailcom';
  String registeredPass = 'riki';

  String inputEmail = '';
  String inputPass = '';

  final formKey = GlobalKey<FormState>();

  String indicatorText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue, Colors.orange])),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Login Page',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold)),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          onChanged: (value) {
                            inputEmail = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Email must be included";
                            }
                          },
                          decoration: const InputDecoration(labelText: "Email"),
                        ),
                        TextFormField(
                          onChanged: (value) {
                            inputPass = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Password must be included";
                            }
                            return null;
                          },
                          decoration:
                              const InputDecoration(labelText: "Password"),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if (formKey.currentState!.validate()) {
                                  if (inputEmail == registeredEmail &&
                                      inputPass == registeredPass) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((_) =>
                                                const HomePage())));
                                  } else {
                                    setState(() {
                                      indicatorText =
                                          'Wrong email or password, please try again';
                                    });
                                  }
                                }
                              });
                            },
                            child: const Text('Submit')),
                        SizedBox(
                          height: 20,
                        ),
                        Text(indicatorText)
                      ],
                    ))
              ])),
    ));
  }
}
