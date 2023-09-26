import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keymerce/theme.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultMargin),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/image_shoes5.png',
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
              Column(
                children: [
                  Image.asset(
                    'assets/button_add.png',
                    width: 16,
                  ),
                  verticalSpaceVeryTiny,
                  Text(
                    '2',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                  verticalSpaceVeryTiny,
                  Image.asset(
                    'assets/button_min.png',
                    width: 16,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Image.asset(
                'assets/icon_remove.png',
                width: 10,
              ),
              horizontalSpaceTiny,
              Text(
                'Remove',
                style: alertTextStyle.copyWith(
                  fontSize: 11.sp,
                  fontWeight: light,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
