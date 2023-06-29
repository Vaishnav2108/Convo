import 'package:flutter/material.dart';
import 'auth.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/login.png'),
            SizedBox(
              height: 16,
            ),
            Text(
              'Login',
              style: TextStyle(
                  color: Color(0xFF5053FF),
                  fontFamily: 'Poppins',
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 28,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0x91B3FA), width: 1),
                      borderRadius: BorderRadius.circular(16)),
                  hintText: 'Phone no.',
                  hintStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Color(0x91B3FA)),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Auth()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF5053FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                  child: Text(
                    'Get OTP',
                    style: TextStyle(
                      color: Color(0xFFF2F2F2),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
