import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:furrl_demo/cubit/splash_cubit.dart';
import 'package:furrl_demo/util/colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if(state is SplashCompleted) {
          Navigator.pushReplacementNamed(context, '/home');
        }
      },
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 400,
                height: 75,
                child: Image.asset('assets/furrl_logo.png'),
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 75.0),
                child: SizedBox(
                  height: 100,
                  child: SpinKitThreeBounce(
                    color: UiColors.purple,
                    size: 40,
                    duration: Duration(milliseconds: 1000),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
