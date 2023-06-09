import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial()){
    _loadTimer();
  }

  void _loadTimer() {
    Future.delayed(const Duration(milliseconds: 1000), (){
      emit(SplashCompleted());
    });
  }
}
