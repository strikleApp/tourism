import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:techphilia/constants.dart';
import 'package:techphilia/explore/explore.dart';
import 'package:techphilia/models/places_list.dart';

class MobileExplore extends StatelessWidget {
  const MobileExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: containerBgColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tourism',
          style: appbarStyle.copyWith(fontSize: 18.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: 100.w,
          padding: EdgeInsets.symmetric(horizontal: kBodyPadding),
          child: Column(
            children: [
              SizedBox(
                height: 15.sp,
              ),
              Text(
                "Journey Through Enchanting Destinations",
                style: titleTextStyle,
              ),
              SizedBox(
                height: 15.sp,
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  ...List.generate(
                    listOfPlaces.length,
                    (index) => PlacesTile(
                      place: listOfPlaces[index],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
