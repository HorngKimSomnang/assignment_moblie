import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/verfication_email_screen.dart';
import 'package:flutter_application_1/widgets/custom_text_field.dart';

class EmailAutoScreen extends StatefulWidget {
  const EmailAutoScreen({super.key});

  @override
  State<EmailAutoScreen> createState() => _EmailAutoScreenState();
}

class _EmailAutoScreenState extends State<EmailAutoScreen> {
  TextEditingController emailController = TextEditingController();
  String emailText = '';
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 20),
                  child: Image.asset(
                    "assets/Icon_Email.png",
                    height: 50,
                  ),
                ),
                Text(
                  "What's your email?",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "We'll check if you have an account",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 15),
                CustomTextField(
                  controller: emailController,
                  labelText: "Email",
                  onChanged: (value) {
                    setState(() {
                      emailText = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 15,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
              child: GestureDetector(
                onTap: () {
                  if (emailText.endsWith("@gmail.com")) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerificationEmailScreen(
                          email: emailText, // Pass email to the next screen
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text("Invalid email. Please use a Gmail address."),
                      ),
                    );
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: emailText.isEmpty
                        ? Color(0xFFCCCCCC)
                        : Color(0xFFFF2B85),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
