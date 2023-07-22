import 'package:flutter/material.dart';
import 'package:ui_design_practise/job_ui/screens/Home/components/background.dart';
import 'package:ui_design_practise/job_ui/screens/Home/components/header.dart';
import 'package:ui_design_practise/job_ui/screens/Home/components/all_jobs.dart';
import 'package:ui_design_practise/job_ui/screens/Home/components/search_area.dart';
import 'package:ui_design_practise/job_ui/screens/Home/components/tabs.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Header(),
            SearchArea(),
            Tabs(),
            AllJobs(),
          ]),
        ),
      ),
    );
  }
}
