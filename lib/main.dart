import 'package:flutter/material.dart';
import 'package:sepatu/pages/cart_page.dart';
import 'package:sepatu/pages/detail_chat_page.dart';
import 'package:sepatu/pages/edit_profile_page.dart';
import 'package:sepatu/pages/home/main_page.dart';
import 'package:sepatu/pages/product_page.dart';
import 'package:sepatu/pages/sign_in_page.dart';
import 'package:sepatu/pages/splash_page.dart';
import 'package:sepatu/pages/sign_up_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => SplashPage(),
        '/sign-in' : (context) => SignInPage(),
        '/sign-up' : (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/detail-chat':(context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/product':(context) => ProductPage(),
        '/cart':(context) => Cartpage(),
        },
    );
  }
}