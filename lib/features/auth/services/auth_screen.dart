import 'package:doc_app/common/widgets/custom_button.dart';
import 'package:doc_app/common/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../../../constants/global_variables.dart';

enum Auth { signin }

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  // ignore: prefer_final_fields
  Auth _auth = Auth.signin;
  final _signInFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('C:/Flutter/doc_app/images/ProductArenLogo.png'),
              // const Text(
              //   'Welcome',
              //   style: TextStyle(
              //     fontSize: 16,
              //     fontWeight: FontWeight.w500,
              //   ),
              // ),
              ListTile(
                tileColor: _auth == Auth.signin
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greyBackgroundCOlor,
              ),
              if (_auth == Auth.signin)
                Container(
                  padding: const EdgeInsets.all(32),
                  child: Form(
                    key: _signInFormKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: _emailController,
                          hintText: 'E-mail',
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        CustomTextField(
                          controller: _passwordController,
                          hintText: 'Password',
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        CustomButton(
                          text: 'Log In',
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
