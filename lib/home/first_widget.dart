import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:techphilia/constants.dart';
import 'package:techphilia/models/places_list.dart';

class FirstWidget extends StatelessWidget {
  const FirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: opacityColor,
          child: Container(
            height: 100.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: opacityColor,
              image: DecorationImage(
                opacity: 0.2,
                fit: BoxFit.cover,
                image: AssetImage(kVaranasi.image),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kBodyPadding),
          child: SizedBox(
            height: 100.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Namaste!",
                  style: TextStyle(fontSize: 28.sp, color: titleFontColor),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Text(
                  "Enchanting India\nWhere Tradition Meets Tranquility",
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: titleFontColor,
                  ),
                ),
                SizedBox(
                  height: 15.sp,
                ),
                SizedBox(
                  width: 38.sp,
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
              ],
            ),
          ),
        )
      ],
    );
  }
}
