import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kWhite = Color(0xffffffff);
const Color kLightenWhite = Color(0xffeff5f4);
const Color kLighterWhite = Color(0xfffcfcfc);

const Color kgrey = Color(0xff9397a0);
const Color klightergrey = Color(0xffa7a7a7);

const Color kblue = Color(0xff5474fd);
const Color klightblue = Color(0xff83b1ff);
const Color kligherblue = Color(0xffc1d4f9);
const Color kdarkblue = Color(0xff19202d);
const Color kbordercolor = Color(0xffeeeeee);

const double kborderRadius = 16.0;

final kborder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kborderRadius),
  borderSide: BorderSide.none,
);

final kpoppinsBold = GoogleFonts.poppins(
  color: kdarkblue,
  fontWeight: FontWeight.w700,
);

final kpoppinsSemiBold = GoogleFonts.poppins(
  color: kdarkblue,
  fontWeight: FontWeight.w600,
);

final kpoppinsMedium = GoogleFonts.poppins(
  color: kdarkblue,
  fontWeight: FontWeight.w500,
);

final kpoppinsRegular = GoogleFonts.poppins(
  color: kdarkblue,
  fontWeight: FontWeight.w400,
);
