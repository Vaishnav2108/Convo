import 'package:convo/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'homepage.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              //Back Icon
              IconButton(
                  onPressed: () {
                    LoginPage();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xFF5053FF),
                  )),

              //Title
              Text('Enter your OTP',
                  style: TextStyle(
                    color: Color(0xFF5053FF),
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.08,
                  ))
            ],
          ),
          SizedBox(
            height: 40,
          ),

          //OTP Text field
          OTPTextField(
            length: 6,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 40,
            spaceBetween: 8,
            fieldStyle: FieldStyle.box,
            outlineBorderRadius: 15,
            style: const TextStyle(fontSize: 8),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            onCompleted: (pin) {},
          ),
          SizedBox(
            height: 60,
          ),

          //Elevated  Button
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Auth()));
              },
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xFF5053FF)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 8.0),
                child: const Text(
                  'Submit',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      fontSize: 20),
                ),
              ))
        ],
      ),
    );
  }
}
