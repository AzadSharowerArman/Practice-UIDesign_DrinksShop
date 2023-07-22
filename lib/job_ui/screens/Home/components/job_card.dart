import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  String image, companyName, jobTitle, location;
  JobCard(
      {super.key,
      required this.image,
      required this.companyName,
      required this.jobTitle,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  image,
                  width: 50,
                ),
                Text(
                  companyName,
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.bookmark_outline)
              ],
            ),
            Text(
              jobTitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  location,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ]),
    );
  }
}
