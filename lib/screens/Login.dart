import 'package:flutter/material.dart';
import 'package:untitled/components/LoginBottomSection.dart';
import 'package:untitled/components/LoginTopSection.dart';

import '../components/LoginController.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController nameController = TextEditingController();
  final LoginController loginController = LoginController();

  final _formKey = GlobalKey<FormState>();

  bool valueValidator(String? value){
    if(value != null && value.isEmpty){
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Expanded(
                  flex: 57,
                  child: LoginTopSection(constraints: constraints),
                ),
                Expanded(
                  flex: 43,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: LoginBottomSection(formKey: _formKey, nameController: nameController, loginController: loginController),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
