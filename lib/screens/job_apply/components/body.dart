import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/screens/applications/applications.dart';
import 'package:capstone_flutter/screens/job_apply/components/country.dart';
import 'package:capstone_flutter/screens/job_apply/components/cv_upload.dart';
import 'package:capstone_flutter/screens/job_apply/components/first_and_last_name.dart';
import 'package:capstone_flutter/screens/job_apply/components/message.dart';
import 'package:capstone_flutter/screens/job_apply/components/your_email.dart';
import 'package:capstone_flutter/widgets/custom_button.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const VerticalHeightSpacing(height: 20),
            const FirstAndLastName(),
            const VerticalHeightSpacing(height: 15),
            const YourEmail(),
            const VerticalHeightSpacing(height: 15),
            const Country(),
            const VerticalHeightSpacing(height: 15),
            const Message(),
            const VerticalHeightSpacing(height: 15),
            const CvUpload(),
            const VerticalHeightSpacing(height: 15),
            CustomButton(
              verticalPadding: 10,
              buttonWidth: size.width,
              text: applyNow,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              press: () => Navigator.of(context).pushNamed(ApplicationScreen.routeName),
            ),
          ],
        ),
      ),
    );
  }
}
