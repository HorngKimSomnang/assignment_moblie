import 'package:flutter/material.dart';

// Define CountryCode at top-level
class CountryCode {
  final String code;
  final String flagPath;

  CountryCode({required this.code, required this.flagPath});
}

class PhoneAutoScreen extends StatefulWidget {
  const PhoneAutoScreen({super.key});

  @override
  State<PhoneAutoScreen> createState() => _PhoneAutoScreenState();
}

class _PhoneAutoScreenState extends State<PhoneAutoScreen> {
  final List<CountryCode> countryCodes = [
    CountryCode(code: '+855', flagPath: 'assets/cambodia-flag.png'),
    CountryCode(code: '+1', flagPath: 'assets/united-states-flag.png'),
    CountryCode(code: '+44', flagPath: 'assets/united-kingdom_flag.png'),
    CountryCode(code: '+91', flagPath: 'assets/india_flag.png'),
  ];

  late CountryCode selectedCountryCode;
  final TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectedCountryCode = countryCodes.first;
  }

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
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Image.asset(
                        'assets/otp_icon.png',
                        height: 100,
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "What's your mobile number?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Please enter your registered mobile number",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButton<CountryCode>(
                          value: selectedCountryCode,
                          icon: Icon(Icons.arrow_drop_down),
                          underline: SizedBox(),
                          items: countryCodes.map((country) {
                            return DropdownMenuItem(
                              value: country,
                              child: Row(
                                children: [
                                  Image.asset(
                                    country.flagPath,
                                    height: 20,
                                    width: 20,
                                  ),
                                  const SizedBox(width: 8),
                                  Text(country.code),
                                ],
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedCountryCode = value!;
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: "Mobile number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF2B85),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
