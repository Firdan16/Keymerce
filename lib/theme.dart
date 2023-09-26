import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;

Color primaryColor = const Color(0xff6C5ECF);
Color secondaryColor = const Color(0xff38ABBE);
Color alertColor = const Color(0xffED6363);
Color priceColor = const Color(0xff2C96F1);
Color backgroundColor1 = const Color(0xff1F1D2B);
Color backgroundColor2 = const Color(0xff2B2937);
Color backgroundColor3 = const Color(0xff242231);
Color backgroundColor4 = const Color(0xff252836);
Color backgroundColor5 = const Color(0xff2B2844);
Color backgroundColor6 = const Color(0xffECEDEF);
Color primaryTextColor = const Color(0xffF1F0F2);
Color secondaryTextColor = const Color(0xff999999);
Color subtitleColor = const Color(0xff504F5E);
Color transparentColor = Colors.transparent;
Color blackColor = const Color(0xff2E2E2E);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryTextColor,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryTextColor,
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: subtitleColor,
);

TextStyle priceTextStyle = GoogleFonts.poppins(
  color: priceColor,
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: primaryColor,
);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: blackColor,
);

TextStyle alertTextStyle = GoogleFonts.poppins(
  color: alertColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

const Widget horizontalSpaceTiny = SizedBox(width: 5.0);
const Widget horizontalSpaceSmall = SizedBox(width: 10.0);
const Widget horizontalSpaceMedium = SizedBox(width: 25.0);
const Widget horizontalSpaceLarge = SizedBox(width: 50.0);

const Widget verticalSpaceVeryTiny = SizedBox(height: 2.5);
const Widget verticalSpaceTiny = SizedBox(height: 5.0);
const Widget verticalSpaceSmall = SizedBox(height: 10.0);
const Widget verticalSpaceMedium = SizedBox(height: 20.0);
const Widget verticalSpaceLarge = SizedBox(height: 50.0);
const Widget verticalSpaceMassive = SizedBox(height: 90.0);

Widget spacedDivider = const Column(
  children: <Widget>[
    verticalSpaceMedium,
    Divider(color: Colors.blueGrey, height: 5.0),
    verticalSpaceMedium,
  ],
);

Widget verticalSpace(double height) => SizedBox(height: height);

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
