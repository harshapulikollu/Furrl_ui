import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'root_nav_state.dart';

class RootNavCubit extends Cubit<RootNavState> {
  RootNavCubit() : super(RootNavInitial());

  final PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  int _bottomBarSelectedIndex = 0;

  int get bottomBarSelectedIndex => _bottomBarSelectedIndex;

  PageController get pageController => _pageController;

  void onPageChanged(int index) {
    _bottomBarSelectedIndex = index;
    pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }
}
