import 'package:flutter/material.dart';
import 'package:tugas_flutter_look_id/pages/movie_page/movie_page.dart';
import 'package:tugas_flutter_look_id/pages/profile_page/profile_page.dart';
import 'package:tugas_flutter_look_id/widgets/custom_bottom_navbar.dart';

import '../../widgets/custom_bottom_navbar_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController pageController = PageController();
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (value) {
                setState(() {
                  selectedPage = value;
                });
              },
              children: const [
                MoviePage(),
                ProfilePage(),
              ],
            ),
            CustomBottomNavbar(
              items: [
                CustomBottomNavbarItem(
                  index: 0,
                  isSelected: selectedPage == 0,
                  title: 'Home',
                  image: 'assets/movie.png',
                  selectedImage: 'assets/movie-selected.png',
                ),
                CustomBottomNavbarItem(
                  index: 1,
                  isSelected: selectedPage == 1,
                  title: 'Profile',
                  image: 'assets/profile.png',
                  selectedImage: 'assets/profile-selected.png',
                ),
              ],
              onTap: (index) {
                selectedPage = index;
                pageController.animateToPage(
                  selectedPage,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                );
              },
              selectedIndex: 0,
            ),
          ],
        ),
      ),
    );
  }
}
