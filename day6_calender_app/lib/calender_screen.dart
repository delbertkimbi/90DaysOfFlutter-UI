import 'package:day6_calender_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalenderScreen extends StatefulWidget {
  const CalenderScreen({super.key});

  @override
  State<CalenderScreen> createState() => _CalenderScreenState();
}

class _CalenderScreenState extends State<CalenderScreen> {
  final TextStyle _dayStyle = const TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  final TextStyle _selectedDayStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  final TextStyle _normalDayStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: AppColors.black2,
  );
  final TextStyle _nextMonthStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: AppColors.grey,
  );
  Widget _dayText({required String text}) {
    return Text(text, style: _dayStyle);
  }

  int selected = 10;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.07, vertical: height * .31),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            alignment: Alignment.center,
            image: AssetImage('assets/bg.png'),
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(
              width * 0.05,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: width * 0.035,
                      color: AppColors.black2,
                    ),
                    Text(
                      'July, 2024',
                      style: GoogleFonts.montserrat(
                        color: const Color(0xffF07EF8),
                        fontSize: width * 0.04,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: width * 0.035,
                      color: AppColors.black2,
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _dayText(text: 'Mon'),
                    _dayText(text: 'Tue'),
                    _dayText(text: 'Wed'),
                    _dayText(text: 'Thu'),
                    _dayText(text: 'Fri'),
                    _dayText(text: 'Sat'),
                    _dayText(text: 'Sun'),
                  ],
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: 35,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 7),
                    itemBuilder: (context, index) {
                      bool isSelceted = index == selected;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = index;
                            isSelceted = selected == index;
                          });
                        },
                        child: Container(
                          width: width * 0.09,
                          height: width * 0.09,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                isSelceted ? AppColors.pink : AppColors.white,
                          ),
                          child: Center(
                            child: Text(
                              index > 30
                                  ? (index - 30).toString()
                                  : (index + 1).toString(),
                              style: isSelceted
                                  ? _selectedDayStyle
                                  : (index > 30
                                      ? _nextMonthStyle
                                      : _normalDayStyle),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
