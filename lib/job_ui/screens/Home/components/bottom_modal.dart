import 'package:flutter/material.dart';
import 'package:ui_design_practise/job_ui/constant.dart';

class BottomModal extends StatelessWidget {
  String image, companyName, jobTitle, location, type;
  List req;
  BottomModal(
      {super.key,
      required this.image,
      required this.companyName,
      required this.jobTitle,
      required this.location,
      required this.type,
      required this.req});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: Container(
            width: 80,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.network(
                  image,
                  height: 40,
                  width: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  companyName,
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.bookmark_outline),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.more_horiz_outlined)
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          jobTitle,
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(location)
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.watch_later_outlined,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(type)
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Requirements",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text("$req"),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
              color: kButtonColor, borderRadius: BorderRadius.circular(50)),
          child: Center(
              child: Text("Apply NOW!",
                  style: TextStyle(fontSize: 20, color: Colors.white))),
        )
      ]),
    );
  }
}
