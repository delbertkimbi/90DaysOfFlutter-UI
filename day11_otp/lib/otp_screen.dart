import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 25,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'OTP Verification Code',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'We have sent the code to delbertkimbi@gmail.com',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    3,
                    (index) => Container(
                          height: 60,
                          width: 50,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(5),
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Color(0xffEFF5FA),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextField(
                            onChanged: (index) {
                              if (index.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              fillColor: Color(0xffEFF5FA),
                              filled: true,
                            ),
                            style: Theme.of(context).textTheme.bodyLarge,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        )),
              ),
              const Text(
                ' - ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                    3,
                    (index) => Container(
                          height: 60,
                          width: 50,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Color(0xffEFF5FA),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: TextField(
                            onChanged: (index) {
                              if (index.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              fillColor: Color(0xffEFF5FA),
                              filled: true,
                            ),
                            style: Theme.of(context).textTheme.bodyLarge,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        )),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Didn\'t recieve a code? ',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              Text(
                'Resend code',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffFF7B5F),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            height: 37,
            width: double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 40),
            decoration: BoxDecoration(
              color: const Color(0xff898A8D),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Confirm',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
