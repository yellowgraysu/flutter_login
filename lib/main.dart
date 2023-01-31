import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          cardTheme:
              const CardTheme(elevation: 0, shadowColor: Colors.transparent)),
      home: Scaffold(
        body: Container(
          color: Colors.teal,
          child: Center(
            child: FlutterLogin(
              logo: Container(
                color: Colors.red,
              ),
              onLogin: (_) {},
              onRecoverPassword: (_) {},
              onSignup: (p0) {},
              theme: LoginTheme(
                headerMargin: 0,
                pageColorLight: Colors.white,
                pageColorDark: Colors.white,
                iconColor: const Color(0xFF8485FF).withOpacity(0.6),
                errorColor: const Color(0xFFFF6068),
                inputTheme: InputDecorationTheme(
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: const Color(0xFF8485FF).withOpacity(0.6)),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  labelStyle: const TextStyle(color: Color(0xFF9E9E9E)),
                ),
                buttonTheme:
                    const LoginButtonTheme(backgroundColor: Color(0xFF8485FF)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
