import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xff3b5998),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            const Text(
              "facebook",
              style: const TextStyle(
                fontFamily: 'a',
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const SizedBox(
              width: 350,
              child: const TextField(
                decoration: const InputDecoration(
                    hintText: 'Email or Phone',
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 350,
              child: const TextField(
                obscureText: true,
                decoration: const InputDecoration(
                    hintText: 'Password',
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1, color: Colors.grey))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Log In'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: const Color(0xff323264),
                padding: const EdgeInsets.only(
                  left: 156,
                  right: 156,
                  top: 20,
                  bottom: 20,
                ),
              ),
            ),
            const SizedBox(height: 220),
            Row(
              children: [
                const SizedBox(
                  width: 125,
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      launch(
                          'https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget#:~:text=Flutter%20doesn%27t%20have%20built-in%20hyperlink%20support%20but%20you,which%20has%20a%20recognizer%20attribute%20to%20handle%20taps%3A');
                    },
                    child: const Text(
                      "sign up for facebook",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white),
                    ),
                  ),
                ),
                const Padding(padding: const EdgeInsets.only(left: 100)),
                Container(
                  child: Center(
                      child: Text(
                    "?",
                    style: TextStyle(color: Colors.white, fontFamily: 'a'),
                  )),
                  color: const Color(0xff323264),
                  height: 25,
                  width: 25,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
