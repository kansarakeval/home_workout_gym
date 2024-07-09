import 'package:flutter/material.dart';
import 'package:home_workout_gym/screen/category/view/category_screen.dart';
import 'package:home_workout_gym/screen/detail/view/detail_screen.dart';
import 'package:home_workout_gym/screen/home/view/home_screen.dart';
import 'package:home_workout_gym/screen/splash/view/splash_screen.dart';

Map<String,WidgetBuilder> app_routes={
  '/': (context) => const SplashScreen(),
  'home': (context) => const HomeScreen(),
  'category':(context) => const CategoryScreen(),
  'detail':(context) => const DetailScreen(),
};