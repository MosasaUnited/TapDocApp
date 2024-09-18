import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_doc_app/core/theme/styles.dart';

import '../../../../core/constants/strings.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SvgPicture.asset(Strings.appLogoWithLowOpacity),
      Container(
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [.14, .4]),
        ),
        child: Image.asset(Strings.onboardingDoctor),
      ),
      Positioned(
        bottom: 30,
        left: 0,
        right: 0,
        child: Text(
          'Best Doctor\n Appointment App',
          style: Styles.font32BlueBold.copyWith(
            height: 1.4.h,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }
}
