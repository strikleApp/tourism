import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:techphilia/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28.h,
      color: bgColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconAndText(
                icon: EvaIcons.link2,
                title: "Portfolio",
                link: kPortfolioLink,
              ),
              IconAndText(
                icon: EvaIcons.github,
                title: "Github",
                link: kGithub,
              ),
              IconAndText(
                icon: EvaIcons.linkedin,
                title: "Linkedin",
                link: kLinkedin,
              ),
              IconAndText(
                icon: EvaIcons.google,
                title: "PlayStore",
                link: kGoogleConsole,
              ),
            ],
          ),
          const Text(
            "Tourism",
            style: TextStyle(color: appbarFontColor, fontSize: appbarFontSize),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name: Aashish Kumar",
                style: TextStyle(
                    fontSize: (appbarFontSize - 10.sp), color: appbarFontColor),
              ),
              Text(
                "Email: 0aashishkumar5@gmail.com",
                style: TextStyle(
                    fontSize: (appbarFontSize - 10.sp), color: appbarFontColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String title;
  final String link;
  final Color? color;

  const IconAndText(
      {super.key,
      required this.title,
      required this.icon,
      required this.link,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(
        onPressed: () async {
          await launchUrl(Uri.parse(link));
        },
        child: Row(
          children: [
            Icon(
              icon,
              color: color ?? appbarFontColor,
            ),
            SizedBox(
              width: 8.sp,
            ),
            Text(
              title,
              style: TextStyle(color: color ?? appbarFontColor, fontSize: 13.sp),
            ),
          ],
        ),
      ),
    );
  }
}
