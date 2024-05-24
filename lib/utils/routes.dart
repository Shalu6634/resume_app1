import 'package:flutter/material.dart';
import 'package:resume_app1/screens/homeScreen/Education.dart';
import 'package:resume_app1/screens/homeScreen/Experience.dart';
import 'package:resume_app1/screens/homeScreen/Projects.dart';
import 'package:resume_app1/screens/homeScreen/Skills.dart';
import '../screens/Splash/SplashScreen.dart';
import '../screens/homeScreen/ContactInfo.dart';
import '../screens/homeScreen/PersonalStatement.dart';
import '../screens/homeScreen/Reference.dart';
import '../screens/homeScreen/drawerPage.dart';



class AppRoutes
{
  static Map<String, Widget Function(BuildContext)> routes  =   {

    '/':(context)=>const SplashScreen(),
    '/person':(context)=>const PersonalStatement(),
    '/draw':(context) => const DrawerPage(),
     '/info':(context)=> const ContactInfo(),
     '/edu':(context)=> const EducationDetail(),
     '/exp':(context)=> const ExperienceDetail(),
     '/skill':(context)=> const SkillsScreen(),
     '/ref':(context)=> const ReferenceScreen(),
     '/pro':(context)=> const ProjectsScreen(),


  };

}