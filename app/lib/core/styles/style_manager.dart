import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/color_manager.dart';
import 'font_weight_helper.dart';

class StyleManager {
  static final TextStyle white28Bold = GoogleFonts.sora(
    fontSize: 28.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );

  static final TextStyle grey13Regular = GoogleFonts.sora(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorManager.lightGrey,
  );

  static final TextStyle white16SemiBold = GoogleFonts.sora(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: Colors.white,
  );

  static final TextStyle lighterGrey14SemiBold = GoogleFonts.sora(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorManager.lighterGrey,
  );

  static final TextStyle darkGrey16SemiBold = GoogleFonts.sora(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorManager.darkGrey,
  );

  static final TextStyle black18SemiBold = GoogleFonts.sora(
    fontSize: 18.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorManager.black,
  );
}
