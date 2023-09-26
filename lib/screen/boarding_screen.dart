import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keymerce/screen/sign_in_screen.dart';
import 'package:keymerce/theme.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpaceMassive,
              LottieBuilder.asset('assets/splash_lottie.json'),
              Text(
                'BRING SHOP TO THE NEXT LEVEL!',
                style: primaryTextStyle.copyWith(
                  fontSize: 18.sp,
                  fontWeight: semiBold,
                ),
              ),
              verticalSpaceSmall,
              Text(
                'Bring your world to find anythiny you want, make the shop fun and fully trusted!',
                textAlign: TextAlign.center,
                style: primaryTextStyle.copyWith(
                  fontSize: 12.sp,
                ),
              ),
              verticalSpaceMassive,
              Column(
                children: [
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
                  verticalSpaceSmall,
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: const SignInScreen()));
                    },
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'Sign in with Phone Number',
                          style: primaryTextStyle.copyWith(
                            fontSize: 12.sp,
                            fontWeight: semiBold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  verticalSpaceSmall,
                  Container(
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/google_icon.svg',
                            height: 28,
                            width: 28,
                          ),
                          horizontalSpaceSmall,
                          Text(
                            'Sign in with Google',
                            style: primaryTextStyle.copyWith(
                                fontSize: 12.sp,
                                fontWeight: semiBold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
