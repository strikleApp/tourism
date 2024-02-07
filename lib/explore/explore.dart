import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:techphilia/constants.dart';
import 'package:techphilia/home/appbar_widget.dart';
import 'package:techphilia/models/place.dart';
import 'package:techphilia/models/places_list.dart';
import 'package:techphilia/tourism_place/tourism_place.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: containerBgColor,
      appBar: customAppbar(context: context),
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

class PlacesTile extends StatelessWidget {
  final Place place;
  const PlacesTile({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TourismPlace(place: place),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(20),
        width: 50.sp,
        padding: EdgeInsets.symmetric(horizontal:12.sp, vertical: 10.sp),
        decoration: BoxDecoration(
          color: appbarFontColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 40.sp,
              width: 50.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    place.image,
                  ),
                ),
              ),
            ),
            Text(
              place.title,
              style: TextStyle(
                  color: fontColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              place.location,
              style: TextStyle(
                  color: fontColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              place.description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: fontColor,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
