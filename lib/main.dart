
import 'package:e_commerce_firebase_user/intro_screen/view/intro_screen.dart';
import 'package:e_commerce_firebase_user/login_system/screen/view/log_in_screen.dart';
import 'package:e_commerce_firebase_user/login_system/screen/view/sign_up_screen.dart';
import 'package:e_commerce_firebase_user/screen/view/home_screen.dart';
import 'package:e_commerce_firebase_user/screen/view/product_detali.dart';
import 'package:e_commerce_firebase_user/screen/view/splesh_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sizer/sizer.dart';

import 'firebase_options.dart';
Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      Sizer(
        builder: (context, orientation, deviceType) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/home',
          routes: {
            '/':(p0) => SpleshScreen(),
            '/intro':(p0) => IntroScreen(),
            '/login':(p0) => LoginScreen(),
            '/signUp':(p0) => SignUpScreen(),
            '/home':(p0) => HomeScreen(),
            '/prode':(p0) => ProductDetail(),
          },
        ),
      )
  );
}
