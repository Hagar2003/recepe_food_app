import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe_app/constants.dart';
import 'package:recipe_app/core/utils/styles.dart';
import 'package:recipe_app/features/home/presentation/views/home_screen.dart';

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({super.key});

  @override
  State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  int selectedPage = 0;
  final PageController _pageController = PageController();
  
    @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey.shade100,
        onTap: (value) {
          setState(() {
            _pageController.jumpToPage(value);
            selectedPage = value;
          });
        },
        currentIndex: selectedPage,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: Styles.Text16,
        selectedLabelStyle: Styles.Text18,
        selectedItemColor: kPrimaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home5,size: 35,),
            label: 'Home',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,size: 35),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.calendar_1,size: 35),
            label: 'Meal Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.setting,size: 35),
            label: 'Settings',
      
      )],
      ),
      body: PageView(
        controller: _pageController,
        
        children: [
        const  HomeScreen(),
      
          Container(),
            Container(),
              Container(),
                Container(),
        ],
      ),
    );
  }
}
