import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keymerce/theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class ProductScreen extends StatefulWidget {
  ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int currentIndex = 0;
  bool isWishlist = false;

  CarouselController carouselController = CarouselController();

  Future<void> showSuccessDialog() async {
    return showDialog(
      context: context,
      builder: (BuildContext context) => Container(
        width: screenWidth(context) - (2 * defaultMargin),
        child: AlertDialog(
          backgroundColor: backgroundColor3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.close,
                      color: primaryTextColor,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/icon_success.png',
                  width: 100,
                ),
                const SizedBox(height: 14),
                Text(
                  'Hurray :D',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  'Item added succesfully',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
                verticalSpaceMedium,
                Container(
                  width: 154,
                  height: 44,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'View My Cart',
                      style: primaryTextStyle.copyWith(
                        fontSize: 12.sp,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List images = [
    'assets/image_shoes.png',
    'assets/image_shoes3.png',
    'assets/image_shoes4.png'
  ];

  List familiarShoes = [
    'assets/image_shoes.png',
    'assets/image_shoes3.png',
    'assets/image_shoes4.png',
    'assets/image_shoes5.png',
    'assets/image_shoes6.png',
    'assets/image_shoes7.png',
  ];

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.chevron_left, size: 30),
                ),
                Icon(
                  Icons.shopping_bag,
                  color: backgroundColor1,
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map(
                  (image) => Image.asset(
                    image,
                    width: screenWidth(context),
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            }),
          ),
          AnimatedSmoothIndicator(
            activeIndex: currentIndex,
            count: images.length,
            effect: ExpandingDotsEffect(
              activeDotColor: primaryColor,
              dotWidth: 8,
              dotColor: backgroundColor4,
              dotHeight: 5.0,
            ),
          ),
        ],
      );
    }

    Widget familiarShoesCard(String imageUrl) {
      return Container(
        width: 54,
        height: 54,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 17),
        decoration: BoxDecoration(
          color: backgroundColor1,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(24),
          ),
        ),
        child: Column(
          children: [
            // HEADER
            Container(
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TERREX URBAN LOW',
                          style: primaryTextStyle.copyWith(
                            fontSize: 14.sp,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          'Hiking',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 11.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isWishlist = !isWishlist;
                      });
                      if (isWishlist) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: secondaryColor,
                            content: const Text(
                              'Has been added to Wishlist',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: alertColor,
                            content: const Text(
                              'Has been removed from Wishlist',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }
                    },
                    child: Image.asset(
                      isWishlist
                          ? 'assets/button_wishlist_blue.png'
                          : 'assets/button_wishlist.png',
                      width: 46,
                    ),
                  ),
                ],
              ),
            ),

            // PRICE
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 20,
                left: defaultMargin,
                right: defaultMargin,
              ),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Price start from',
                    style: primaryTextStyle.copyWith(
                        fontSize: 12.sp, fontWeight: semiBold),
                  ),
                  Text(
                    '\$ 30.12',
                    style: priceTextStyle.copyWith(
                      fontSize: 14.sp,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),

            // DESKRIPSI
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  ),
                  verticalSpaceSmall,
                  Text(
                    'Ini adalah contoh deskripsi Ini adalaah contoh deskripsi Ini adalaah contoh deskripsi Ini adalaah contoh deskripsi Ini adalaah contoh deskripsi',
                    style: subtitleTextStyle.copyWith(
                      fontWeight: light,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),

            // FAMILIAR SHOES
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Familiar Shoes',
                    style: primaryTextStyle.copyWith(fontWeight: medium),
                  ),
                  verticalSpaceSmall,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: familiarShoes
                          .map((image) => familiarShoesCard(image))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),

            // BUTTONS
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/chat');
              },
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(defaultMargin),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/button_chat.png',
                          ),
                        ),
                      ),
                    ),
                    horizontalSpaceMedium,
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            showSuccessDialog();
                          },
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            backgroundColor: primaryColor,
                          ),
                          child: Text(
                            'Add to Cart',
                            style: primaryTextStyle.copyWith(
                              fontSize: 12.sp,
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
