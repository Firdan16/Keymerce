import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keymerce/theme.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 70,
            bottom: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Let's get's started",
                style: primaryTextStyle.copyWith(
                  fontSize: 26.sp,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                "Using your number have been regist before!",
                style: primaryTextStyle.copyWith(
                  fontSize: 11.sp,
                  fontWeight: medium,
                ),
              ),
              verticalSpaceSmall,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Container(
                      height: 42,
                      width: 90,
                      decoration: BoxDecoration(
                          color: backgroundColor1,
                          border:
                              Border.all(color: Colors.white.withOpacity(0.8)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14, right: 14),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/flag_indo.png',
                              height: 15,
                            ),
                            verticalSpaceVeryTiny,
                            Text(
                              '+62',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  horizontalSpaceSmall,
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: TextFormField(
                        // controller: telpLoginController,
                        keyboardType: TextInputType.number,
                        maxLength: 14,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 12),
                          counterText: '',
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: '8xxxxxxxx',
                          hintStyle: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              verticalSpaceSmall,
              RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  style: GoogleFonts.poppins(
                    fontSize: 11.sp,
                    color: Colors.white,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Sign up ",
                        style: GoogleFonts.poppins(
                          fontSize: 11.sp,
                          color: Colors.white,
                          fontWeight: semiBold,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.of(context)
              .pushNamedAndRemoveUntil('/home', (route) => false);
        },
        child: Container(
          height: 50,
          width: screenWidth(context) * 0.85,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              'Sign in',
              style: primaryTextStyle.copyWith(
                fontSize: 12.sp,
                fontWeight: semiBold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
