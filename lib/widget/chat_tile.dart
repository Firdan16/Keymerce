import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keymerce/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/chat');
      },
      child: Container(
        margin: const EdgeInsets.only(top: 3),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo.png',
                  width: 50,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoe Store',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12.5.sp,
                        ),
                      ),
                      Text(
                        'Hello, this is BAPLI in here',
                        overflow: TextOverflow.ellipsis,
                        style: secondaryTextStyle.copyWith(
                          fontSize: 11.5.sp,
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                horizontalSpaceSmall,
                Text(
                  'Now',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 9.sp,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const Divider(
              thickness: 1,
              color: Color(0xff2B2939),
            ),
          ],
        ),
      ),
    );
  }
}
