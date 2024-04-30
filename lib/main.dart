import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/BloC/Add_to_cart/addtocart_bloc.dart';
import 'package:nectar/BloC/Banner/banner_bloc.dart';
import 'package:nectar/BloC/Cart/cart_bloc.dart';
import 'package:nectar/BloC/Delete/delete_bloc.dart';
import 'package:nectar/BloC/Get_All_Products/get_all_products_bloc.dart';
import 'package:nectar/BloC/Login/login_bloc.dart';
import 'package:nectar/BloC/Product/product_bloc.dart';
import 'package:nectar/BloC/Sign%20Up/SignUp_bloc.dart';

import 'UI_registration/splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => SignUpBloc(),
            ),
            BlocProvider(
              create: (context) => LoginBloc(),
            ),
            BlocProvider(
              create: (context) => GetAllProductsBloc(),
            ),
            BlocProvider(
              create: (context) => BannerBloc(),
            ),
            BlocProvider(
              create: (context) => ProductBloc(),
            ),
            BlocProvider(
              create: (context) => AddtocartBloc(),
            ),
            BlocProvider(
              create: (context) => CartBloc(),
            ),
            BlocProvider(
              create: (context) => DeleteBloc(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'grocery store',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
            ),
            home: Splash(),
          ),
        );
      },
    );
  }
}
