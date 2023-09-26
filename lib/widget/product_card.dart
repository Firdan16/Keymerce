import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keymerce/theme.dart';

class ProductCard extends StatelessWidget {
  final String categories;
  final String nameItem;
  final String price;
  final String image;

  const ProductCard({
    super.key,
    required this.categories,
    required this.nameItem,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product-detail');
      },
      child: Container(
        width: 215,
        height: 278,
        margin: EdgeInsets.only(right: defaultMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryTextColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.asset(
                image,
                width: 215,
                height: 170,
                fit: BoxFit.cover,
              ),
            ),
            verticalSpaceSmall,
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    categories,
                    style: secondaryTextStyle.copyWith(
                      fontSize: 12.sp,
                    ),
                  ),
                  verticalSpaceTiny,
                  Text(
                    nameItem,
                    style: blackTextStyle.copyWith(
                      fontSize: 16.sp,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpaceTiny,
                  Text(
                    price,
                    style: priceTextStyle.copyWith(
                      fontSize: 14.sp,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
