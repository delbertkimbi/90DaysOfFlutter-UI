import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            padding: EdgeInsets.all(width * 0.01),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset('assets/top_gradient.png'),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'assets/bottom_gradient.png',
            ),
          ),
          Positioned(
              top: height * 0.07,
              right: width * 0.054,
              child: Row(
                children: [
                  Image.asset(
                    'assets/help1.png',
                    height: 22,
                    width: 22,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'Get Help',
                    style: TextStyle(
                      color: Color(0xffC41010),
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              )),
          Positioned(
            bottom: height * .15,
            left: width * .05,
            right: width * .05,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Login Page',
                    style: GoogleFonts.lato().copyWith(
                      color: const Color(0xff7A24A1),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/line.png'),
                    SizedBox(
                      width: width * .1,
                    ),
                    const Text(
                      'Longin with',
                      style: TextStyle(
                        color: Color(0xff8894AC),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: width * .1,
                    ),
                    Image.asset('assets/line.png'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: width * .13,
                      height: height * .13,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.05),
                                spreadRadius: 3,
                                blurRadius: 4,
                                offset: const Offset(5, 5)),
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.05),
                                spreadRadius: 3,
                                blurRadius: 4,
                                offset: const Offset(-5, -5)),
                          ]),
                      child: Image.asset(
                        'assets/google2.png',
                      ),
                    ),
                    SizedBox(
                      width: width * .1,
                    ),
                    Image.asset(
                      'assets/facebook.png',
                      width: width * .13,
                      height: height * .13,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/line2.png'),
                    SizedBox(
                      width: width * .1,
                    ),
                    const Text(
                      '    Or    ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: width * .1,
                    ),
                    Image.asset(
                      'assets/line2.png',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                _inputText(text: 'Email'),
                SizedBox(
                  height: height * 0.01,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter your email',
                      hintStyle: const TextStyle(
                        color: Color(0xff868E96),
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: const BorderSide(
                          color: Color(0xff868E96),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color(0xff868E96),
                        ),
                      )),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                _inputText(text: 'Password'),
                SizedBox(
                  height: height * 0.01,
                ),
                TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Enter password',
                      hintStyle: const TextStyle(
                        color: Color(0xff868E96),
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: const BorderSide(
                          color: Color(0xff868E96),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color(0xff868E96),
                        ),
                      )),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xffFC851C),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.07,
                ),
                Container(
                  height: height * 0.065,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: const Color(0xff7A24A1),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.011,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff868E96),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Sign up now ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff7A24A1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Text _inputText({required String text}) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xff0F1106),
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    );
  }
}
