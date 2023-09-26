import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keymerce/theme.dart';
import 'package:keymerce/widget/product_card.dart';
import 'package:keymerce/widget/product_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo, Ananda',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '@ananrifa',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text(
                  'All',
                  style: primaryTextStyle.copyWith(
                    fontSize: 11.sp,
                    fontWeight: medium,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtitleColor),
                  color: transparentColor,
                ),
                child: Text(
                  'Joger',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 11.sp,
                    fontWeight: medium,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtitleColor),
                  color: transparentColor,
                ),
                child: Text(
                  'Pantofel',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 11.sp,
                    fontWeight: medium,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtitleColor),
                  color: transparentColor,
                ),
                child: Text(
                  'Joger',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 11.sp,
                    fontWeight: medium,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtitleColor),
                  color: transparentColor,
                ),
                child: Text(
                  'Pantofel',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 11.sp,
                    fontWeight: medium,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: subtitleColor),
                  color: transparentColor,
                ),
                child: Text(
                  'Pantofel',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 11.sp,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popularProductTitle() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Text(
          'Popular Product',
          style: primaryTextStyle.copyWith(
            fontSize: 19.sp,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget popularProduct() {
      return Container(
        margin: const EdgeInsets.only(top: 18),
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Row(
                children: [
                  ProductCard(
                    categories: 'Hiking',
                    nameItem: 'Court Vision 1.0',
                    price: '\$ 10,98',
                    image: 'assets/image_shoes2.png',
                  ),
                  ProductCard(
                    categories: 'Hiking',
                    nameItem: 'Court Vision 1.0',
                    price: '\$ 10,98',
                    image: 'assets/image_shoes3.png',
                  ),
                  ProductCard(
                    categories: 'Hiking',
                    nameItem: 'Court Vision 1.0',
                    price: '\$ 10,98',
                    image: 'assets/image_shoes4.png',
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget newArrivalTitle() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Text(
          'New Arrivals',
          style: primaryTextStyle.copyWith(
            fontSize: 19.sp,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newArrival() {
      return Container(
        margin: const EdgeInsets.only(top: 14),
        child: Column(
          children: [
            ProductTile(),
            ProductTile(),
            ProductTile(),
            ProductTile(),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: ListView(
        children: [
          header(),
          categories(),
          popularProductTitle(),
          popularProduct(),
          newArrivalTitle(),
          newArrival(),
        ],
      ),
    );
  }
}
