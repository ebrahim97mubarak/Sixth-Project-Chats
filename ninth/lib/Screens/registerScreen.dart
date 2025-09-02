// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ninth/Widgets/TextFiledWidget.dart';
import 'package:ninth/consets.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  GlobalKey<FormState> keyy = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: kPraimaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Form(
            key: keyy,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/scholar.png'),
                  height: 120,
                  width: 120,
                  fit: BoxFit.fill,
                ),
                const Text(
                  'Scholar hat',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                      fontSize: 40),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 75, bottom: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFiledWidget(
                    hideText: false,
                      hent: 'Email',
                      validator: (value) {
                        if (email.contains('@gmail.com') == false) {
                          return 'this not Email please write your Email';
                        }
                        return null;
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 35),
                  child: TextFiledWidget(
                    hideText: true,
                    hent: 'Password',
                    validator: (value) {
                      if (password.length < 8) {
                        return 'this password is short please inter 8 char';
                      }
                      if (double.tryParse(value!) != null) {
                        return 'this password is very week you can write some char';
                      }
                      return null;
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (keyy.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Sccsesful Register!',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      );
                      Navigator.pop(context);
                    }
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 25,
                          color: kPraimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'already have an account ',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        email = '';
                        password = '';
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Sing In',
                        style:
                            TextStyle(color: Color(0xEE7697A7), fontSize: 18),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
