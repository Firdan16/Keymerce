import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keymerce/screen/boarding_screen.dart';
import 'package:keymerce/screen/content/product_screen.dart';
import 'package:keymerce/screen/home/cart_screen.dart';
import 'package:keymerce/screen/home/checkout_screen.dart';
import 'package:keymerce/screen/home/detail_chat_screen.dart';
import 'package:keymerce/screen/home/main_screen.dart';
import 'package:keymerce/screen/sign_in_screen.dart';
import 'package:keymerce/screen/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (_, child) {
        final textTheme = Theme.of(context).textTheme;
        return MaterialApp(
          title: 'Keymerce',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme(textTheme)),
          routes: {
            '/': (context) => const SplashScreen(),
            '/boarding': (context) => const BoardingScreen(),
            '/sign-in': (context) => const SignInScreen(),
            '/home': (context) => const MainScreen(),
            '/chat': (context) => const DetailPageScreen(),
            '/product-detail': (context) => ProductScreen(),
            '/cart': (context) => const CartScreen(),
            '/checkout': (context) => const CheckOutScreen()
          },
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: child!,
            );
          },
        );
      },
    );
  }
}
