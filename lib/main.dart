
import 'package:byte_boutique/core/shared_widgets/nav_bar.dart';
import 'package:byte_boutique/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import '../features/home/presentation/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/shared_widgets/app_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
      designSize:const Size(375, 812),
      minTextAdapt:true,
      splitScreenMode:true,
      builder:(context,child)=>
       MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
      
          // colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 225, 213, 246)),
        ),
        debugShowCheckedModeBanner: false,
        home: const NavBar(),
      ),
    );
  }
}

