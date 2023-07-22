import 'package:flutter/material.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
          image: const DecorationImage(
              image: NetworkImage(
                  "https://fastly.picsum.photos/id/9/5000/3269.jpg?hmac=cZKbaLeduq7rNB8X-bigYO8bvPIWtT-mh8GRXtU3vPc"),
              fit: BoxFit.cover,
              opacity: 0.5)),
      // ignore: prefer_const_literals_to_create_immutables
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          "Fast Search",
          style: TextStyle(fontSize: 35, color: Colors.white),
        ),
        SizedBox(
          height: 20,
        ),
        const Text(
          "You can search quickly for \n the job you want",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 50,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white,
          ),
          child: Row(children: [
            Icon(Icons.search),
            SizedBox(
              width: 8,
            ),
            Text("Search")
          ]),
        )
      ]),
    );
  }
}
