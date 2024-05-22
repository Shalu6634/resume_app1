import 'package:flutter/material.dart';
import '../screens/Splash/SplashScreen.dart';
import '../screens/homeScreen/CareerDetail.dart';
import '../screens/homeScreen/ContactInfo.dart';
import '../screens/homeScreen/PersonalStatement.dart';
import '../screens/homeScreen/drawerPage.dart';


class AppRoutes
{
  static Map<String, Widget Function(BuildContext)> routes  =   {

    '/':(context)=>const SplashScreen(),
    '/career':(context)=>const CareerDetail(),
    '/person':(context)=>const PersonalStatement(),
    '/draw':(context) => const DrawerPage(),
     '/info':(context)=> const ContactInfo(),

  };

}