import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keymerce/theme.dart';
import 'package:keymerce/widget/wishlist_card.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget emptyWishlist() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_wishlist.png',
                width: 74,
              ),
              verticalSpaceMedium,
              Text(
                "You don't have dream shoes?",
                style: primaryTextStyle.copyWith(
                  fontSize: 13.5.sp,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Let's find your favorite shoes",
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
          color: backgroundColor3,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: const [
              WishlistCard(
                nameItem: 'Terrex Urban Low',
                price: '\$ 10,98',
                image: 'assets/image_shoes2.png',
              ),
              WishlistCard(
                nameItem: 'Terrex Urban Medium',
                price: '\$ 10,98',
                image: 'assets/image_shoes3.png',
              ),
              WishlistCard(
                nameItem: 'Terrex Urban High',
                price: '\$ 10,98',
                image: 'assets/image_shoes4.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text(
          'Favorite Shoes',
          style: primaryTextStyle.copyWith(
            fontSize: 16.sp,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: backgroundColor1,
      body: Column(
        children: [
          // emptyWishlist(),
          content(),
        ],
      ),
    );
  }
}
