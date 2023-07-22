import 'package:flutter/material.dart';
import 'package:ui_design_practise/job_ui/constant.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

List _menu = ["All", "Popular", "Featured"];
var currentIndex = 0;

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  decoration: BoxDecoration(
                      color: currentIndex == index
                          ? kSecoundaryColor
                          : Colors.white,
                      border: Border.all(
                          color: currentIndex == index
                              ? Colors.white
                              : kSecoundaryColor),
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    _menu[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          separatorBuilder: (context, index) => SizedBox(width: 20),
          itemCount: _menu.length),
    );
  }
}
