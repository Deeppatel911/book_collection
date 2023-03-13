import 'package:book_collection/screens/login_screen.dart';
import 'package:book_collection/screens/registration_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(children: [
              Hero(
                tag: 'logo',
                child: Image.asset(
                  'images/book_logo.png',
                  height: 75.0,
                  width: 75.0,
                ),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Book Collection',
                      textStyle: const TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.black)),
                ],
              ),
            ]),
            const SizedBox(
              height: 48.0,
            ),
            ElevatedButton(
              onPressed: () async{
                await Firebase.initializeApp();
                Navigator.pushNamed(context, LoginScreen.id);
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () async{
                await Firebase.initializeApp();
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
