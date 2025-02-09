import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'LoginController.dart';

class LoginBottomSection extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final LoginController loginController;

  const LoginBottomSection({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.loginController,
  });

  bool valueValidator(String? value) {
    return value == null || value.isEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40, bottom: 15),
            child: Text(
              'Qual é o seu primeiro nome?',
              style: AppTheme.light.textTheme.displaySmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: TextFormField(
              validator: (value) => valueValidator(value) ? 'Insira seu nome' : null,
              controller: nameController,
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: "Nome",
                hintStyle: const TextStyle(
                  color: Color.fromRGBO(194, 189, 189, 1),
                  fontWeight: FontWeight.bold,
                ),
                fillColor: Color.fromRGBO(243, 241, 241, 1),
                filled: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              ),
            ),
          ),
          PrimaryButton(
            label: 'Vamos continuar',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                loginController.updateName(nameController.text);
                GoRouter.of(context).push('/home', extra: loginController);
              }
            },
            width: double.infinity,
            height: 56,
          ),
        ],
      ),
    );
  }
}
