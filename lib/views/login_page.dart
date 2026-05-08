import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: SafeArea(child: Column(children: [_Logo(), SizedBox(height: 15)])),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        child: Column(
          children: [
            Image.asset('assets/tag-logo.png'),
            SizedBox(height: 20),
            Text("Messenger", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

// necesitamos que mantenga estado
class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
