import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:techphilia/constants.dart';
import 'package:techphilia/models/place.dart';
import 'package:techphilia/tourism_place/tourism_place.dart';

class SecondWidget extends StatelessWidget {
  final Place place;
  const SecondWidget({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: containerBgColor,
      padding: EdgeInsets.symmetric(horizontal: kBodyPadding, vertical: 25.sp),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
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
                  height: 5.sp,
                ),
                Text(
                  "Airport: ${place.airport}",
                  style: subTitleStyle,
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Text(
                  "Railway Station: ${place.railway}",
                  style: subTitleStyle,
                ),
                SizedBox(
                  height: 15.sp,
                ),
                Text(
                  place.description,
                  maxLines: 5,
                  style: bodyTextStyle,
                ),
                SizedBox(
                  height: 20.sp,
                ),
                SizedBox(
                  width: 30.sp,
                  height: 22.sp,
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
                          MaterialPageRoute(
                              builder: (context) =>
                                  TourismPlace(place: place)));
                    },
                    child: Text(
                      "View",
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold,
                          color: titleFontColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.sp),
            height: 74.sp,
            width: 74.sp,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(place.image),
              ),
            ),
          )
        ],
      ),
    );
  }
}
