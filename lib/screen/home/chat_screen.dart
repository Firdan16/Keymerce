import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keymerce/theme.dart';
import 'package:keymerce/widget/chat_tile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontSize: 16.sp,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget contentEmpty() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_headset.png',
                width: 80,
              ),
              verticalSpaceMedium,
              Text(
                'Oopps no message yet?',
                style: primaryTextStyle.copyWith(
                  fontSize: 13.5.sp,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "You have never done a transaction",
                style: secondaryTextStyle.copyWith(
                  fontSize: 12.sp,
                ),
              ),
              verticalSpaceMedium,
              SizedBox(
                height: 40,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 10),
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 11.sp,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor1,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              ChatTile(),
              ChatTile(),
              ChatTile(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        verticalSpaceMedium,
        content(),
      ],
    );
  }
}
