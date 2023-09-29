import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keymerce/theme.dart';
import 'package:lottie/lottie.dart';

class CheckoutSuccessScreen extends StatelessWidget {
  const CheckoutSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LottieBuilder.asset('assets/success_checkout1.json', height: 300),
              verticalSpaceMedium,
              Text(
                'YOUR TRANSACTION SUCCESS!',
                style: primaryTextStyle.copyWith(
                  fontSize: 15.sp,
                  fontWeight: semiBold,
                ),
              ),
              verticalSpaceSmall,
              Text(
                'Hope you have a nice day and come back whenever you want ♥',
                textAlign: TextAlign.center,
                style: primaryTextStyle.copyWith(
                  fontSize: 12.sp,
                ),
              ),
              verticalSpaceLarge,
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      body: content(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
        },
        child: Container(
          height: 55,
          width: screenWidth(context) * 0.85,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'Back to home',
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
