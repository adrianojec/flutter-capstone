import 'package:capstone_flutter/constants/asset_path.dart';
import 'package:capstone_flutter/constants/constants.dart';
import 'package:capstone_flutter/constants/strings.dart';
import 'package:capstone_flutter/widgets/custom_sized_box.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CvUpload extends StatelessWidget {
  const CvUpload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final scale = MockUpDevice.mockUpWidth / size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          cv,
          textScaleFactor: scale,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const VerticalHeightSpacing(height: 10),
        Container(
          height: size.height * 0.1,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.white,
          ),
          child: MaterialButton(
            onPressed: () async {
              final result = await FilePicker.platform.pickFiles();
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  uploadHere,
                  textScaleFactor: scale,
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                SvgPicture.asset('${AssetPath.icon}file.svg'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
