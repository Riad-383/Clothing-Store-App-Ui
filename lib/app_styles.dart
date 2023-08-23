import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color myBrown = Color(0xff292526);
const Color myDarkBrown = Color(0xff1b2028);

const Color myGrey = Color(0xffa4aaad);
const Color myDarkGrey = Color(0xff878787);
const Color myLightGrey = Color(0xffededed);

const Color myWhite = Color(0xffffffff);

const Color myBlack = Color(0xff111111);

const Color myYellow = Color(0xffffd33c);

const double myBorderRedius = 14.0;

const double myPaddingHorizotal = 24.0;

final myInpuBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(myBorderRedius),
    borderSide: const BorderSide(color: myLightGrey));

final myEncodeSansBold = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w700,
);

final myEncodeSansMedium = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w500,
);

final myEncodeSansRegular = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w400,
);

final myEncodeSansSemibold = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w600,
);

