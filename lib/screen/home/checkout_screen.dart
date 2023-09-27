import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keymerce/theme.dart';
import 'package:keymerce/widget/checkout_card.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          // LIST ITEM
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Items',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13.sp,
                    fontWeight: medium,
                  ),
                ),
                CheckOutCard(),
                CheckOutCard(),
              ],
            ),
          ),

          // ADDRESS DETAIL
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: backgroundColor4,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address Details',
                  style: primaryTextStyle.copyWith(
                    fontSize: 13.sp,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(height: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icon_store_location.png',
                          width: 40,
                        ),
                        Column(
                          children: [
                            Text(
                              'Store Location',
                              style: secondaryTextStyle.copyWith(
                                fontSize: 11.sp,
                                fontWeight: light,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/icon_line.png',
                      height: 30,
                    ),
                    Image.asset(
                      'assets/icon_your_address.png',
                      width: 40,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Checkout Details',
          style: primaryTextStyle.copyWith(
            fontSize: 16.sp,
            fontWeight: medium,
          ),
        ),
      ),
      body: content(),
    );
  }
}
