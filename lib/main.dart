import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:now/screens/select_language/language_selection_Screen.dart';



void main() {
  runApp( MeNow());
}

class MeNow extends StatelessWidget {
  const MeNow({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize:  Size(440, 956
        ),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_ , child) {
         return MaterialApp(
          home: LanguageSelectionScreen(),);
      }
    );
  }
}

