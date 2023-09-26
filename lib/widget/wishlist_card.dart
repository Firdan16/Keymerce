import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keymerce/theme.dart';

class WishlistCard extends StatelessWidget {
  final String nameItem;
  final String price;
  final String image;

  const WishlistCard({
    required this.nameItem,
    required this.price,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(top: 10, left: 12, bottom: 14, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              width: 60,
            ),
          ),
          horizontalSpaceSmall,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  nameItem,
                  style: primaryTextStyle.copyWith(
                    fontSize: 13.sp,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  price,
                  style: priceTextStyle.copyWith(
                    fontSize: 12.sp,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          Image.asset('assets/button_wishlist_blue.png', width: 34),
        ],
      ),
    );
  }
}
