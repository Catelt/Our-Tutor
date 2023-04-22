import 'package:flutter/material.dart';
import '../../../../common_widgets/common_widgets.dart';
import '../../../../constants/app_icon.dart';
import '../../../../constants/app_size.dart';
import '../../../../constants/fake_tutors.dart';
import '../../../../constants/specialties.dart';
import '../widgets/widget.dart';

class TutorScreen extends StatelessWidget {
  const TutorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          headHomeWidget(context),
          filterWidget(context),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Sizes.p32, vertical: Sizes.p16),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: fakeTutors.length,
              itemBuilder: (context, index) {
                return TutorItem(item: fakeTutors[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return gapH12;
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget filterWidget(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: Sizes.p32, vertical: Sizes.p8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Find a Tutor",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
          ),
          gapH12,
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: TextFieldCustom(
                    hint: "Enter tutor name",
                  )),
              gapW4,
              Expanded(child: TextFieldCustom(hint: "Select tutor nationality"))
            ],
          ),
          gapH8,
          Text(
            "Select available tutoring time:",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Wrap(
            spacing: Sizes.p4,
            runSpacing: Sizes.p8,
            children: [
              SizedBox(
                width: 150,
                child: TextFieldCustom(
                  hint: "Select a day",
                ),
              ),
              SizedBox(
                width: 250,
                child: TextFieldCustom(
                  hint: "Start time -> End time",
                ),
              ),
            ],
          ),
          gapH12,
          WrapListWidget(
            list: specialties_data,
            color: Colors.grey[700],
          ),
          gapH12,
        ],
      ),
    );
  }

  Widget headHomeWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: Sizes.p8),
      width: double.infinity,
      color: Colors.blue,
      child: Column(
        children: [
          gapH16,
          Text(
            "Upcoming lesson",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          gapH4,
          Text(
            "Sat 11 Mar 23 22:00 - 22:25",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          gapH8,
          GestureDetector(
            onTap: null,
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.p20, vertical: Sizes.p4),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgWidget(
                    assetName: AppIcon.icTivi,
                    size: 16,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  gapW8,
                  Text(
                    "Enter your room",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          gapH8,
          Text("Total lesson time is 300 hours 25 minutes",
              style: TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
}
