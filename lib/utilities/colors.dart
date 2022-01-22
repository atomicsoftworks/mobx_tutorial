import 'dart:ui';

class AppColors {
  // Reds
  static const Color guardsmanRed = Color(0xffb90000);
  static const Color mandyRed = Color(0xffe55556);

  // Blues
  static const Color marinerBlue = Color(0xff296ecb);
  static const Color gunPowderBlue = Color(0xff3e405c);
  static const Color ceruleanBlue = Color(0xff0b80ab);

  // Greys
  static const Color romanceWhite = Color(0xfffefefe);
  static const Color lilyWhite = Color(0xffeaeaea);

  // Blacks
  static const Color deepBlack = Color(0xff000001);
  static const Color bunkerBlack = Color(0xff111214);
  static const Color ebony = Color(0xff313238);
  static const Color navBlack = Color(0xff1f2125);

  // Greens
  static Color pigmentGreen = Color(0xff00ba51);
  static Color dellGreen = Color(0xff466133);
}

class ColorFormatter {
  static Color percentage(double value) =>
      value >= 0 ? AppColors.pigmentGreen : AppColors.guardsmanRed;
}
