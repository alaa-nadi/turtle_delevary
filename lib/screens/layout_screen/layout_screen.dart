import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:turtle_delevary/shared/colors/app_colors.dart';

import 'Cubit/layout_cubit.dart';
import 'Cubit/layout_state.dart';


class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

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
                        AppColors.colorMusterApp, BlendMode.srcIn)
                        : null,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/fluent_wallet-24-regular.svg",
                    colorFilter: cubit.currentIndex == 1
                        ? ColorFilter.mode(
                    AppColors.colorMusterApp, BlendMode.srcIn)
                        : null,
                  ),
                  label: 'Wallet',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    "assets/images/gg_profile.svg",
                    colorFilter: cubit.currentIndex == 2
                        ? ColorFilter.mode(
                        AppColors.colorMusterApp, BlendMode.srcIn)
                        : null,
                  ),
                  label: 'Profile',
                ),
              ],
              selectedItemColor: AppColors.colorMusterApp,
              unselectedItemColor:AppColors.colorBlack,
            ),
          );
        },
      ),
    );
  }
}
