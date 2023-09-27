import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keymerce/theme.dart';

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/image_shoes7.png',
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Terrex Urban Low',
                  overflow: TextOverflow.ellipsis,
                  style: primaryTextStyle.copyWith(
                    fontSize: 13.sp,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '\$ 10,98',
                  style: priceTextStyle.copyWith(
                    fontSize: 12.sp,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '2 Items',
            style: secondaryTextStyle.copyWith(
              fontSize: 10.sp,
            ),
          ),
        ],
      ),
    );
  }
}
