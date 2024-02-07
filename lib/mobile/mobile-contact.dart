import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:techphilia/constants.dart';
import 'package:techphilia/home/footer.dart';

class MobileContact extends StatelessWidget {
  const MobileContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: containerBgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Tourism",
          style: appbarStyle.copyWith(fontSize: 18.sp),
        ),
      ),
      body: Center(
        child: FittedBox(
          child: Container(
            padding: EdgeInsets.all(15.sp),
            decoration: BoxDecoration(
              color: appbarFontColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconAndText(
                      title: "Portfolio",
                      icon: EvaIcons.link,
                      link: kPortfolioLink,
                      color: appbarColor,
                    ),
                    IconAndText(
                      title: "Linkedin",
                      icon: EvaIcons.linkedin,
                      link: kLinkedin,
                      color: appbarColor,
                    ),
                    IconAndText(
                      title: "Play Store",
                      icon: EvaIcons.google,
                      link: kGoogleConsole,
                      color: appbarColor,
                    ),
                    IconAndText(
                      title: "Github",
                      icon: EvaIcons.github,
                      link: kGithub,
                      color: appbarColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.sp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _text(text: "Name: Aashish Kumar"),
                    SizedBox(
                      height: 12.sp,
                    ),
                    _text(text: "Course: MCA-2 (044)"),
                    SizedBox(
                      height: 12.sp,
                    ),
                    _text(text: "Email: 0aashishkumar5@gmail.com"),
                    SizedBox(
                      height: 12.sp,
                    ),
                    _text(text: "Phone: 9430990577"),
                    SizedBox(
                      height: 12.sp,
                    ),
                    _text(text: "Instagram: ak_aashish05"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  SelectableText _text({required String text}) {
    return SelectableText(
      text,
      style: TextStyle(
          color: appbarColor, fontSize: 18.sp, fontWeight: FontWeight.w600),
    );
  }
}
