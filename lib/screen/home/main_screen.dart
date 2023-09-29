import 'package:flutter/material.dart';
import 'package:keymerce/screen/home/cart_screen.dart';
import 'package:keymerce/screen/home/chat_screen.dart';
import 'package:keymerce/screen/home/favorite_screen.dart';
import 'package:keymerce/screen/home/home_screen.dart';
import 'package:keymerce/screen/home/profile_screen.dart';
import 'package:keymerce/theme.dart';
import 'package:page_transition/page_transition.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedNavbar = 0;

  final List<Widget> content = [
    const HomeScreen(),
    const ChatScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];

  void _changeSelectedNavbar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: content[_selectedNavbar],
      bottomNavigationBar: customBottomNav(),
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget cartButton() {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.bottomToTop,
                duration: const Duration(milliseconds: 400),
                reverseDuration: const Duration(milliseconds: 400),
                child: const CartScreen()));
      },
      backgroundColor: secondaryColor,
      child: Image.asset('assets/icon_cart.png', width: 20),
    );
  }

  Widget customBottomNav() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(25),
      ),
      child: BottomAppBar(
        elevation: 0,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: backgroundColor4,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedNavbar,
          onTap: _changeSelectedNavbar,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20, bottom: 5),
                child: Image.asset(
                  'assets/icon_home.png',
                  width: 20,
                  color: _selectedNavbar == 0
                      ? primaryColor
                      : const Color(0xff808191),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20, bottom: 5),
                child: Image.asset(
                  'assets/icon_chat.png',
                  width: 20,
                  color: _selectedNavbar == 1
                      ? primaryColor
                      : const Color(0xff808191),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20, bottom: 5),
                child: Image.asset(
                  'assets/icon_wishlist.png',
                  width: 20,
                  color: _selectedNavbar == 2
                      ? primaryColor
                      : const Color(0xff808191),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: const EdgeInsets.only(top: 20, bottom: 5),
                child: Image.asset(
                  'assets/icon_profile.png',
                  width: 20,
                  color: _selectedNavbar == 3
                      ? primaryColor
                      : const Color(0xff808191),
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
