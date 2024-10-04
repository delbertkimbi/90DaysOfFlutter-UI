import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PinScreen extends StatefulWidget {
  const PinScreen({super.key});

  @override
  State<PinScreen> createState() => _PinScreenState();
}

class _PinScreenState extends State<PinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 25,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Enter Current PIN',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Enter a 4-digit PIN to open your account',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  4,
                  (index) => Container(
                        height: 60,
                        width: 50,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(5),
                        margin:const  EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color:const Color(0xffEFF5FA),
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
          ),
          const SizedBox(height: 20),
          Container(
            height: 40,
            width: double.infinity,
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: const Color(0xff898A8D),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Confirm',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
