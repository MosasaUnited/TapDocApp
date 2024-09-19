import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap_doc_app/core/theme/styles.dart';

import '../../../../core/constants/strings.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Strings.appLogo),
        SizedBox(
          width: 10.w,
        ),
        Text(
          'TapDoc',
          style: Styles.font24BlackBold,
        )
      ],
    );
  }
}
