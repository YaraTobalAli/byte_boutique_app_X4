import 'package:byte_boutique/features/home/presentation/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/home/presentation/favourite_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theme/app_colors.dart';
// import '../../features/home/presentation/notifications_screen.dart';
// import '../../features/home/presentation/profile_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => NavBarState();
}

class NavBarState extends State<NavBar> {
  int currentIndex = 0;

 
  final List<Widget> screens = [
     HomeScreen(),      
     FavouriteScreen(),  
     NotificationScreen(), 
    const Center(child: Text("profile")),   
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF9F9F9),
        
        // عرض الصفحة الحالية 
        body: screens[currentIndex],
      
        bottomNavigationBar: CurvedNavigationBar(
          index: currentIndex,
          height: 60.h,
          backgroundColor: const Color(0xFFF9F9F9), 
          color: Colors.white, 
          buttonBackgroundColor:  AppColors.secondary, 
          animationDuration: const Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            Icon(
              currentIndex == 0 ? Icons.home_rounded : Icons.home_outlined,
              size: 28,
              color: currentIndex == 0 ? Colors.white : Colors.black38,
            ),
            Icon(
              currentIndex == 1 ? Icons.favorite : Icons.favorite_border,
              size: 28,
              color: currentIndex == 1 ? Colors.white : Colors.black38,
            ),
            Icon(
              currentIndex == 2 ? Icons.notifications : Icons.notifications_none,
              size: 28,
              color: currentIndex == 2 ? Colors.white : Colors.black38,
            ),
            Icon(
              currentIndex == 3 ? Icons.person : Icons.person_outline,
              size: 28,
              color: currentIndex == 3 ? Colors.white : Colors.black38,
            ),
          ],
        ),
      ),
    );
  }
}
