import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'Cubit/layout_cubit.dart';
import 'Cubit/layout_state.dart';


class LayoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LayoutCubit(),
      child: BlocBuilder<LayoutCubit, LayoutState>(
        builder: (context, state) {
          final cubit = context.read<LayoutCubit>();

          return Scaffold(

            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: cubit.changeIndex,
              items: [
                BottomNavigationBarItem(

                  icon: SvgPicture.asset(
                    "assets/images/Group.svg",
                    colorFilter: cubit.currentIndex == 0
                        ? ColorFilter.mode(
                        Colors.green, BlendMode.srcIn)
                        : null,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/fluent_wallet-24-regular.svg",
                    colorFilter: cubit.currentIndex == 1
                        ? ColorFilter.mode(
                        Colors.green, BlendMode.srcIn)
                        : null,
                  ),
                  label: 'Wallet',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/gg_profile.svg",
                    colorFilter: cubit.currentIndex == 2
                        ? ColorFilter.mode(
                        Colors.green, BlendMode.srcIn)
                        : null,
                  ),
                  label: 'Profile',
                ),
              ],
              selectedItemColor: Colors.green,
              unselectedItemColor: Colors.grey,
            ),
          );
        },
      ),
    );
  }
}
