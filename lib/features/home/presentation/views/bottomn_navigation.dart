import 'package:flutter/material.dart';
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
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: Styles.Text16,
        selectedLabelStyle: Styles.Text18,
        selectedItemColor: kPrimaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 40,),
            label: 'Home',
          ),
            BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,size: 40),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 40),
            label: 'Meal Plan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,size: 40),
            label: 'Settings',
      
      )],
      ),
      body: PageView(
        controller: _pageController,
        
        children: [
        const  HomeScreen(),
          // ExploreView(),
          // CartView(),
          // Favourite(),
          Container(),
            Container(),
              Container(),
                Container(),
        ],
      ),
    );
  }
}
