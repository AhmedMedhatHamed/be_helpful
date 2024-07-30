import 'package:be_helpful/data/utils/shared_utils.dart';
import 'package:be_helpful/ui/screens/auth/forget_pass/otp/otp_screen.dart';
import 'package:be_helpful/ui/screens/auth/forget_pass/send_otp/send_otp_screen.dart';
import 'package:be_helpful/ui/screens/auth/login/login_screen.dart';
import 'package:be_helpful/ui/screens/auth/signup/signup_screen.dart';
import 'package:be_helpful/ui/screens/categories/accessories.dart';
import 'package:be_helpful/ui/screens/categories/all_categories.dart';
import 'package:be_helpful/ui/screens/categories/clothes.dart';
import 'package:be_helpful/ui/screens/categories/educational_tools.dart';
import 'package:be_helpful/ui/screens/categories/electronics.dart';
import 'package:be_helpful/ui/screens/categories/entertainment.dart';
import 'package:be_helpful/ui/screens/categories/furniture_decoration.dart';
import 'package:be_helpful/ui/screens/categories/shoes_bags.dart';
import 'package:be_helpful/ui/screens/categories/sports_tool.dart';
import 'package:be_helpful/ui/screens/home/home_screen.dart';
import 'package:be_helpful/ui/screens/home/search.dart';
import 'package:be_helpful/ui/screens/profile/add_post.dart';
import 'package:be_helpful/ui/screens/profile/edit_profile.dart';
import 'package:be_helpful/ui/screens/profile/profile.dart';
import 'package:be_helpful/ui/screens/splash/splash_screen.dart';
import 'package:be_helpful/ui/screens/splash/start_screen.dart';
import 'package:be_helpful/ui/screens/users_accounts/users_details.dart';
import 'package:be_helpful/ui/screens/users_accounts/users_screen.dart';
import 'package:be_helpful/ui/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'domain/di/di.dart';
import 'ui/screens/categories/appliances.dart';

void main()async{
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  String? token = await SharedPrefsUtils().getToken();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: AppTheme.lightTheme,
     routes: {
       HomeScreen.routeName:(context) => const HomeScreen(),
       SplashScreen.routeName:(context) => const SplashScreen(),
       StartScreen.routeName:(context) => const StartScreen(),
       LoginScreen.routeName:(context) => const LoginScreen(),
       SignUpScreen.routeName:(context) => const SignUpScreen(),
       SendOtpScreen.routeName:(context) => const SendOtpScreen(),
       VerificationOTPScreen.routeName:(context) => const VerificationOTPScreen(),
       ProfileScreen.routeName:(context) => const ProfileScreen(),
       EditProfileScreen.routeName:(context) => const EditProfileScreen(),
       AddPostScreen.routeName:(context) => const AddPostScreen(),
       UserScreen.routeName:(context) => const UserScreen(),
       UsersDetailScreen.routeName:(context) => const UsersDetailScreen(),
       SearchScreen.routeName:(context) => const SearchScreen(),
       AccessoriesScreen.routeName:(context) => const AccessoriesScreen(),
       AllCategories.routeName:(context) => const AllCategories(),
       AppliancesScreen.routeName:(context) => const AppliancesScreen(),
       ClothesScreen.routeName:(context) => const ClothesScreen(),
       EducationalToolsScreen.routeName:(context) => const EducationalToolsScreen(),
       ElectronicsScreen.routeName:(context) => const ElectronicsScreen(),
       EntertainmentScreen.routeName:(context) => const EntertainmentScreen(),
       FurnitureDecorationScreen.routeName:(context) => const FurnitureDecorationScreen(),
       ShoesBagsScreen.routeName:(context) => const ShoesBagsScreen(),
       SportsToolScreens.routeName:(context) => const SportsToolScreens(),
     },
      initialRoute: SplashScreen.routeName,
    );
  }
}

