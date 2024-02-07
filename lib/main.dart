import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:techphilia/constants.dart';
import 'package:techphilia/home/home_page.dart';
import 'package:techphilia/mobile/mobile-home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Journey to India',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
                foregroundColor: appbarFontColor,
                titleSpacing: 0,
                color: appbarColor),
            primaryColor: const Color(0xff445D48),
            fontFamily: GoogleFonts.robotoCondensed().fontFamily,
            useMaterial3: true,
          ),
          home: usingPC(context: context)
              ? const HomePage()
              : const MobileHomePage(),
        );
      },
    );
  }
}

bool usingPC({required BuildContext context}) {
  if (defaultTargetPlatform == TargetPlatform.windows ||
      defaultTargetPlatform == TargetPlatform.iOS ||
      defaultTargetPlatform == TargetPlatform.linux) {
    if (MediaQuery.of(context).size.width < 770) {
      return false;
    }
    return true;
  } else {
    return false;
  }
}
