import 'package:flutter/material.dart';
import 'package:tugas_flutter_look_id/widgets/custom_text_field.dart';

import '../../misc/constans.dart';
import '../../misc/methods.dart';
import '../main_page/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            verticalSpace(100),
            Center(
              child: Image.asset(
                'assets/look_id_logo.png',
                width: 170,
                fit: BoxFit.cover,
              ),
            ),
            verticalSpace(100),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  CustomTextField(
                    labelText: 'Email',
                    controller: emailController,
                  ),
                  verticalSpace(24),
                  CustomTextField(
                    labelText: 'Password',
                    controller: passwordController,
                    obSecureText: true,
                  ),
                  verticalSpace(24),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        'Forgot Password ? ',
                        style: TextStyle(
                            color: saffron, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  verticalSpace(28),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                          color: saffron,
                          width: 0.5,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainPage()));
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  verticalSpace(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?'),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Register here',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
