import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:techphilia/constants.dart';
import 'package:techphilia/home/appbar_widget.dart';
import 'package:techphilia/main.dart';
import 'package:techphilia/models/place.dart';

class TourismPlace extends StatelessWidget {
  final Place place;
  const TourismPlace({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      appBar: usingPC(context: context)
          ? customAppbar(context: context)
          : AppBar(
              centerTitle: true,
              title: Text(
                "Tourism",
                style: appbarStyle.copyWith(fontSize: 18.sp),
              ),
            ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 45.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(place.image), fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kBodyPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      place.title,
                      style: titleTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 15.sp,
                  ),
                  Text(
                    "Location: ${place.location}",
                    style: subTitleStyle,
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Text(
                    "Airport: ${place.airport}",
                    style: subTitleStyle,
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Text(
                    "Railway Station: ${place.railway}",
                    style: subTitleStyle,
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Text(
                    place.description,
                    style: bodyTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
