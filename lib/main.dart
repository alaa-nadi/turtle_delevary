import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:turtle_delevary/screens/select_language/language_selection_Screen.dart';


void main() {
  runApp( const MeNow());
}

class MeNow extends StatelessWidget {
  const MeNow({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:  const Size(440, 956
        ),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_ , child) {
         return const MaterialApp(
          home: LanguageSelectionScreen(),);
      }
    );
  }
}

