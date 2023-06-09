import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:furrl_demo/cubit/root_nav_cubit.dart';
import 'package:furrl_demo/cubit/splash_cubit.dart';
import 'package:furrl_demo/ui/pages/root_nav.dart';
import 'package:furrl_demo/ui/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furrl Demo',
      theme:ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/': (context) => BlocProvider(create: (context) => SplashCubit(), child: const SplashPage()),
        '/home': (context) => BlocProvider(create: (context) => RootNavCubit(), child: const RootNavPage()),
      },
    );
  }
}

