import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';
import '../profile_screen/profile_screen.dart';
import '../wallet_screen/wallet_screen.dart';

import 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const WalletScreen(),
    ProfileScreen(),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(IndexChanged());
  }
}
