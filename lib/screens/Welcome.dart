import 'package:flutter/material.dart';
import 'package:untitled/components/WelcomeBottomSection.dart';
import 'package:untitled/components/WelcomeTopSection.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Expanded(
                flex: 57,
                child: TopSection(constraints: constraints),
              ),
              Expanded(
                flex: 43,
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: MediaQuery
                      .of(context)
                      .viewInsets
                      .bottom),
                  child: BottomSection(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
