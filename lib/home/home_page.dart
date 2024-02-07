import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:techphilia/constants.dart';
import 'package:techphilia/home/appbar_widget.dart';
import 'package:techphilia/home/first_widget.dart';
import 'package:techphilia/home/footer.dart';
import 'package:techphilia/home/hr-widget.dart';
import 'package:techphilia/home/second_widget.dart';
import 'package:techphilia/models/places_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: customAppbar(context: context),
        body: Center(
          child: ListView.builder(
            itemCount: _listOfWidget.length,
            itemBuilder: (context, index) {
              return _listOfWidget[index];
            },
          ),
        ),
      ),
    );
  }
}

final List<Widget> _listOfWidget = [
  const FirstWidget(),
  const HorizontalLineWidget(),
  SecondWidget(
    place: kVaranasi,
  ),
  const HorizontalLineWidget(),
  SecondWidget(
    place: kGoa,
  ),
  const HorizontalLineWidget(),
  SecondWidget(
    place: kTajMahal,
  ),
  const HorizontalLineWidget(),
  const Footer(),
];
