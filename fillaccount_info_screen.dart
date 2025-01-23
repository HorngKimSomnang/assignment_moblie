import 'package:flutter/material.dart';

class FillAccountInfoScreen extends StatefulWidget {
  final String email;

  const FillAccountInfoScreen({super.key, required this.email});

  @override
  State<FillAccountInfoScreen> createState() => _FillAccountInfoScreenState();
}

class _FillAccountInfoScreenState extends State<FillAccountInfoScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  String firstNameText = '';
  String lastNameText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0, // Remove shadow for a flat appearance
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  "assets/profile_icon.png",
                  width: 60,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Let's get you started!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  children: [
                    const TextSpan(
                      text: "First, let's create your foodpanda account with ",
                    ),
                    TextSpan(
                      text: widget.email,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: firstNameController,
                      decoration: InputDecoration(
                        labelText: "First name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          firstNameText = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: lastNameController,
                      decoration: InputDecoration(
                        labelText: "Last name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          lastNameText = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.check_box, color: Colors.pink),
                        SizedBox(width: 10),
                        Text(
                          "Continue without a password",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: const [
                        Icon(Icons.check, size: 18, color: Colors.black54),
                        SizedBox(width: 10),
                        Text("No need to remember your password"),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: const [
                        Icon(Icons.check, size: 18, color: Colors.black54),
                        SizedBox(width: 10),
                        Text("Log in using your email"),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: const [
                        Icon(Icons.check, size: 18, color: Colors.black54),
                        SizedBox(width: 10),
                        Text(
                          "Fast, reliable & secure experience every time",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(), // Push the button to the bottom
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10), // Adjust padding
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:
                        firstNameText.isNotEmpty && lastNameText.isNotEmpty
                            ? () {
                                // Handle account creation
                              }
                            : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          firstNameText.isNotEmpty && lastNameText.isNotEmpty
                              ? Colors.pink
                              : Colors.grey,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Create account",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
