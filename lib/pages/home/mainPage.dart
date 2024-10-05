import 'package:flutter/material.dart';
import 'package:projektes/pages/home/chatPage.dart';
import 'package:projektes/pages/home/homePage.dart';
import 'package:projektes/pages/home/profilPage.dart';
import 'package:projektes/pages/home/wishlistPage.dart';
import 'package:projektes/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override

  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor:
            Colors.transparent, // Transparan agar background custom terlihat
        elevation: 0, // Hilangkan shadow default jika diinginkan
        child: Container(
          width: 56, // Ukuran sesuai FloatingActionButton default
          height: 56,
          decoration: BoxDecoration(
            color: bg, // Warna background lingkaran
            shape: BoxShape.circle, // Membuat background berbentuk lingkaran
          ),
          child: Center(
            child: Image.asset(
              'assets/icon_cart.png',
              width: 24, // Sesuaikan ukuran ikon
              height: 24,
            ),
          ),
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          color: primaryTextColor,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: Container(
            padding: EdgeInsets.only(top: 8),
            child: BottomNavigationBar(
              backgroundColor: primaryTextColor,
              currentIndex: currentIndex,
              onTap: (value) {
                print(value);
                setState(() {
                  currentIndex = value;
                });
              },
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icon_home.png',
                    width: 18,
                    color: currentIndex == 0 ? bg : Color(0xff7F7F7F),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icon_chat.png',
                    width: 20,
                    color: currentIndex == 1 ? bg : Color(0xff7F7F7F),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icon_wishlist.png',
                    width: 20,
                    color: currentIndex == 2 ? bg : Color(0xff7F7F7F),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icon_profile.png',
                    width: 16,
                    color: currentIndex == 3 ? bg : Color(0xff7F7F7F),
                  ),
                  label: '',
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget body() {
  switch (currentIndex) {
    case 0:
      return HomePage();
    case 1:
      return ChatPage();
    case 2:
      return WishlistPage();
    case 3:
      return ProfilPage   ();
    default:
      return HomePage();
  }
}


    return Scaffold(
      backgroundColor: putih,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body()
    );
  }
}
