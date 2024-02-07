import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:techphilia/constants.dart';
import 'package:techphilia/contact/contact-us.dart';
import 'package:techphilia/home/home_page.dart';

PreferredSizeWidget customAppbar({required BuildContext context}) {
  return AppBar(
    primary: false,
    title: Padding(
      padding: EdgeInsets.symmetric(horizontal: kBodyPadding),
      child: const Text(
        "Tourism",
        style: TextStyle(fontSize: appbarFontSize),
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        },
        child: const Text(
          "Home",
          style: appbarStyle,
        ),
      ),
      SizedBox(
        width: 15.sp,
      ),
      TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => sendToExplore));
        },
        child: const Text("Explore", style: appbarStyle),
      ),
      SizedBox(
        width: 15.sp,
      ),
      TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ContactUs()));
        },
        child: const Text("Contact Us", style: appbarStyle),
      ),
      SizedBox(
        width: 25.sp,
      ),
    ],
  );
}
