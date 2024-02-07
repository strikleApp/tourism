import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:techphilia/constants.dart';
import 'package:techphilia/home/hr-widget.dart';
import 'package:techphilia/mobile/mobile-contact.dart';
import 'package:techphilia/mobile/mobile-explore.dart';
import 'package:techphilia/models/place.dart';
import 'package:techphilia/models/places_list.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({super.key});

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
      drawer: Drawer(
        backgroundColor: scaffoldBgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MobileExplore(),
                  ),
                );
              },
              child: Text(
                "Explore",
                style: appbarStyle.copyWith(fontSize: 18.sp),
              ),
            ),
            SizedBox(
              height: 15.sp,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MobileContact(),
                  ),
                );
              },
              child: Text(
                "Contact Us",
                style: appbarStyle.copyWith(fontSize: 18.sp),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 20.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.sp,
              ),
              Center(
                child: Text(
                  "Enchanting India\nWhere Tradition Meets Tranquility",
                  style: titleTextStyle.copyWith(fontSize: 20.sp),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              SizedBox(
                width: 40.sp,
                height: 25.sp,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    backgroundColor: const MaterialStatePropertyAll(bgColor),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => sendToExplore),
                    );
                  },
                  child: Text(
                    "Explore",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: titleFontColor),
                  ),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              const HorizontalLineWidget(),
              SizedBox(
                height: 20.sp,
              ),
              MobileImageAndTextWidget(
                place: kVaranasi,
              ),
              SizedBox(
                height: 20.sp,
              ),
              const HorizontalLineWidget(),
              SizedBox(
                height: 20.sp,
              ),
              MobileImageAndTextWidget(
                place: kGoa,
              ),
              SizedBox(
                height: 20.sp,
              ),
              const HorizontalLineWidget(),
              SizedBox(
                height: 20.sp,
              ),
              MobileImageAndTextWidget(
                place: kTajMahal,
              ),
              SizedBox(
                height: 20.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileImageAndTextWidget extends StatelessWidget {
  final Place place;
  const MobileImageAndTextWidget({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(place.image),
            ),
          ),
        ),
        SizedBox(
          height: 10.sp,
        ),
        Text(
          place.title,
          style: titleTextStyle.copyWith(fontSize: 20.sp),
        ),
        SizedBox(
          height: 10.sp,
        ),
        Text(
          place.location,
          style: subTitleStyle.copyWith(fontSize: 17.sp),
        ),
        SizedBox(
          height: 10.sp,
        ),
        Text(
          place.description,
          maxLines: 3,
          style: bodyTextStyle.copyWith(fontSize: 15.sp),
        ),
      ],
    );
  }
}
