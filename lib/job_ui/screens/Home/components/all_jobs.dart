import 'package:flutter/material.dart';
import 'package:ui_design_practise/job_ui/screens/Home/components/bottom_modal.dart';
import 'package:ui_design_practise/job_ui/screens/Home/components/job_card.dart';
import 'package:ui_design_practise/job_ui/screens/Home/components/job_data.dart';

class AllJobs extends StatelessWidget {
  AllJobs({super.key});

  @override
  Widget build(BuildContext context) {
    var job = JobData.JobInfo();
    return Container(
      margin: EdgeInsets.only(left: 25),
      height: 200,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => GestureDetector(
                onTap: (() => showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => BottomModal(
                          image: job[index].CompanyLogo,
                          companyName: job[index].CompanyName,
                          jobTitle: job[index].JobTitle,
                          location: job[index].Address,
                          type: job[index].Type,
                          req: [job[index].Req],
                        ))),
                child: JobCard(
                    image: job[index].CompanyLogo,
                    companyName: job[index].CompanyName,
                    jobTitle: job[index].JobTitle,
                    location: job[index].Address),
              )),
          separatorBuilder: ((context, index) => SizedBox(
                width: 25,
              )),
          itemCount: job.length),
    );
  }
}
