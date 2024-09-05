import 'package:day3_auth_app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    bool obsquarePassword = true;
    bool checkBox = false;
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
                    'Sign-Up',
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
                      'Sign Up with',
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
                _passwordField(obsquarePassword),
                SizedBox(
                  height: height * 0.015,
                ),
                _inputText(text: 'Confirm Password'),
                SizedBox(
                  height: height * 0.01,
                ),
                _passwordField(obsquarePassword),
                SizedBox(
                  height: height * 0.07,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width * 0.0199,
                    ),
                    Checkbox(
                        value: checkBox,
                        //  checkColor: Colors.white,
                        focusColor: const Color(0xff7A24A1),
                        activeColor: const Color(0xff7A24A1),
                        onChanged: (newValeu) {
                          setState(() {
                            checkBox = !checkBox;
                          });
                        }),
                    SizedBox(
                      width: width * 0.0099,
                    ),
                    RichText(
                        text: const TextSpan(
                            text: 'Yes, I understand and agree to the ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff1A264E),
                            ),
                            children: [
                          TextSpan(
                            text: 'Privacy Policy\n',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(text: 'and  '),
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]))
                  ],
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  height: height * 0.065,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: const Color(0xff7A24A1),
                  ),
                  child: const Text(
                    'SignUp',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff868E96),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LoginPage())),
                      child: Text(
                        'LogIn ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffFC851C),
                          fontWeight: FontWeight.w500,
                        ),
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

  TextField _passwordField(bool obsquarePassword) {
    return TextField(
      obscureText: obsquarePassword,
      obscuringCharacter: '*',
      decoration: InputDecoration(
          filled: true,
          suffixIcon: IconButton(
            color: const Color(0xffB8B5C3),
            icon: Icon(
              obsquarePassword ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                obsquarePassword = !obsquarePassword;
              });
            },
          ),
          fillColor: Colors.white,
          hintText: 'password',
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
