import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:techphilia/explore/explore.dart';

// Images
//const String kFrontImage = "images/varanasi.jpg";

// Padding for whole content
double kBodyPadding = 25.sp;
//Colours
const Color scaffoldBgColor = Color(0xffFBFADA);
const Color bgColor = Color(0xff445D48);
const Color titleFontColor = Color(0xffFDE5D4);
const Color opacityColor = Color(0xff001524);
const Color appbarColor = Color(0xff445D48);
const Color appbarFontColor = Color(0xffD6CC99);
const Color containerBgColor = Color(0xffFDE5D4);
const Color fontColor = Color(0xff001524);
const Color titleColor = Color(0xff445D48);

//Font Size
const double appbarFontSize = 35;

const TextStyle appbarStyle =
    TextStyle(fontSize: (appbarFontSize - 15), color: appbarFontColor);

TextStyle titleTextStyle =
    TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w600, color: titleColor);
TextStyle subTitleStyle =
    TextStyle(fontWeight: FontWeight.w500, fontSize: 14.sp, color: titleColor);
TextStyle bodyTextStyle = TextStyle(fontSize: 14.sp, color: fontColor);

// TEXTS

// NAVIGATION

final sendToExplore = ExplorePage();

//LINKS
const String kPortfolioLink = "https://strikleapp.github.io/";
const String kLinkedin = "https://www.linkedin.com/in/strikle/";
const String kGithub = "https://github.com/strikleApp";
const String kGoogleConsole =
    "https://play.google.com/store/apps/dev?id=6315812892060306875";
