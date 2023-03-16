import 'package:flutter/material.dart';
import 'package:yaho_test/themes/color_resource.dart';

class StyleResource {
  static const String fontName = "HelveticaNeu";

  static TextStyle textStyleCaptionLight =
      const TextStyle(fontSize: 16, color: ColorResource.color_cc_text_black_light, fontWeight: FontWeight.w500);

  static TextStyle textStyleCaptionDark =
      const TextStyle(fontSize: 16, color: ColorResource.color_cc_text_black_dark, fontWeight: FontWeight.w500);

  static TextStyle textStyleTitleLight = const TextStyle(
      fontSize: 14, color: ColorResource.color_cc_text_black_light, fontWeight: FontWeight.w500, fontFamily: fontName);

  static TextStyle textStyleTitleDark = const TextStyle(
      fontSize: 14, color: ColorResource.color_cc_text_black_dark, fontWeight: FontWeight.w500, fontFamily: fontName);

  static TextStyle textStyleContentLight = const TextStyle(
      fontSize: 14, color: ColorResource.color_cc_text_grey_light, fontWeight: FontWeight.w400, fontFamily: fontName);

  static TextStyle textStyleContentDark = const TextStyle(
      fontSize: 14, color: ColorResource.color_cc_text_grey_dark, fontWeight: FontWeight.w400, fontFamily: fontName);

  static TextStyle textStyleTitlePinkLight = const TextStyle(
      fontSize: 14, color: ColorResource.color_cc_text_caption_pink, fontWeight: FontWeight.w400, fontFamily: fontName);

  static TextStyle textStyleTitlePinkDark = const TextStyle(
      fontSize: 14, color: ColorResource.color_cc_text_caption_pink, fontWeight: FontWeight.w400, fontFamily: fontName);

  static TextStyle textStyleTitleOrangeLight = const TextStyle(
      fontSize: 13, color: ColorResource.color_cc_text_orange_light, fontWeight: FontWeight.w500, fontFamily: fontName);

  static TextStyle textStyleTitleOrangeDark = const TextStyle(
      fontSize: 13, color: ColorResource.color_cc_text_orange_dark, fontWeight: FontWeight.w500, fontFamily: fontName);

  static TextStyle textStyleTitleWhiteLight = const TextStyle(
      fontSize: 14,
      color: ColorResource.color_cc_text_title_white_light,
      fontWeight: FontWeight.w400,
      fontFamily: fontName);

  static TextStyle textStyleTitleWhiteDark = const TextStyle(
      fontSize: 14,
      color: ColorResource.color_cc_text_title_white_dark,
      fontWeight: FontWeight.w400,
      fontFamily: fontName);

  static TextStyle textStyleCaptionPinkLight = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorResource.color_cc_text_caption_pink_light,
      fontFamily: fontName);

  static TextStyle textStyleCaptionPinkDark = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: ColorResource.color_cc_text_caption_pink_dark,
      fontFamily: fontName);

  static TextStyle textStyle_13_w500_pinkFF199B = const TextStyle(
      fontSize: 13, fontWeight: FontWeight.w500, color: ColorResource.color_navigation_focus, fontFamily: fontName);

  static TextStyle textStyleDeepBlueLight = const TextStyle(
      fontSize: 14, color: ColorResource.color_deep_blue_light, fontWeight: FontWeight.w400, fontFamily: fontName);

  static TextStyle textStyleDeepBlueDark = const TextStyle(
      fontSize: 14, color: ColorResource.color_deep_blue_dark, fontWeight: FontWeight.w400, fontFamily: fontName);

  static TextStyle textStyleRedLight = const TextStyle(
      fontSize: 13, color: ColorResource.color_red_light, fontWeight: FontWeight.w400, fontFamily: fontName);

  static TextStyle textStyleRedDark = const TextStyle(
      fontSize: 13, color: ColorResource.color_red_dark, fontWeight: FontWeight.w400, fontFamily: fontName);

  static TextStyle textStyleNavigationBottomSelectedLight = const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: ColorResource.color_navigation_focus_light,
      fontFamily: fontName);

  static TextStyle textStyleNavigationBottomSelectedDark = const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: ColorResource.color_navigation_focus_dark,
      fontFamily: fontName);

  static TextStyle textStyleNavigationBottomUnSelectedLight = const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: ColorResource.color_navigation_unfocus_light,
      fontFamily: fontName);

  static TextStyle textStyleNavigationBottomUnSelectedDark = const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: ColorResource.color_navigation_unfocus_dark,
      fontFamily: fontName);

  static TextStyle textStyle_13_w500_black202020 = const TextStyle(
      fontSize: 13, color: ColorResource.color_cc_text_black_light, fontWeight: FontWeight.w600, fontFamily: fontName);
  static TextStyle textStyle_16_w500_grey67686C = const TextStyle(
      fontSize: 16, color: ColorResource.color_navigation_unfocus, fontWeight: FontWeight.w500, fontFamily: fontName);

  static TextStyle textStyle_16_w500_grey202020 = const TextStyle(
      fontSize: 16, color: ColorResource.color_cc_text_black_light, fontWeight: FontWeight.w500, fontFamily: fontName);

  static TextStyle textStyle_16_w700_grey202020 = const TextStyle(
      fontSize: 16, color: ColorResource.color_cc_text_black_light, fontWeight: FontWeight.w700, fontFamily: fontName);

  static TextStyle textStyle_13_w400_grey67686C = const TextStyle(
      fontSize: 13, color: ColorResource.color_navigation_unfocus, fontWeight: FontWeight.w400, fontFamily: fontName);

  static const TextStyle textStyle_15_w400_grey67686C = TextStyle(
      fontSize: 15, color: ColorResource.color_navigation_unfocus, fontWeight: FontWeight.w400, fontFamily: fontName);

  static const TextStyle textStyle_15_w700_grey67686C = TextStyle(
      fontSize: 15, color: ColorResource.color_navigation_unfocus, fontWeight: FontWeight.w700, fontFamily: fontName);

  static const TextStyle textStyle_14_w400_grey67686C = TextStyle(
      fontSize: 15, color: ColorResource.color_navigation_unfocus, fontWeight: FontWeight.w400, fontFamily: fontName);

  static TextStyle textStyle_17_w700_black202020 = const TextStyle(
      fontSize: 17, color: ColorResource.black202020, fontWeight: FontWeight.w700, fontFamily: fontName);

  static TextStyle textStyle_13_w400_grey67686C_italic = const TextStyle(
      fontSize: 13,
      color: ColorResource.color_navigation_unfocus,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.italic,
      fontFamily: fontName);

  static TextStyle textStyle_15_w400_grey67686C_italic = const TextStyle(
      fontSize: 15,
      color: ColorResource.color_navigation_unfocus,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.italic,
      fontFamily: fontName);

  static TextStyle textStyle_13_w400_black202020_italic = const TextStyle(
      fontSize: 13,
      color: ColorResource.color_cc_text_black_light,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.italic,
      fontFamily: fontName);

  static TextStyle textStyle_13_w500_grey6C6C6C =
      const TextStyle(fontSize: 15, color: ColorResource.grey6C6C6C, fontWeight: FontWeight.w500, fontFamily: fontName);

  static TextStyle textStyle_12_w500_grey67686C = const TextStyle(
      fontSize: 12, color: ColorResource.color_navigation_unfocus, fontWeight: FontWeight.w500, fontFamily: fontName);
  static TextStyle textStyle_13_w500_grey67686C = const TextStyle(
      fontSize: 13, color: ColorResource.color_navigation_unfocus, fontWeight: FontWeight.w500, fontFamily: fontName);

  static TextStyle textStyle_13_w400_grey3F3F3F =
      const TextStyle(fontSize: 13, color: ColorResource.grey3F3F3F, fontWeight: FontWeight.w400, fontFamily: fontName);

  static const TextStyle textStyle_14_w400_italic_grey67686C = TextStyle(
      fontSize: 14,
      color: ColorResource.color_navigation_unfocus,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.italic,
      fontFamily: fontName);

  static const TextStyle textStyle_14_w500_black202020 = TextStyle(
      fontSize: 14, color: ColorResource.color_cc_text_black_light, fontWeight: FontWeight.w500, fontFamily: fontName);
  static const TextStyle textStyle_13_w700_black202020 = TextStyle(
      fontSize: 13, color: ColorResource.color_cc_text_black_light, fontWeight: FontWeight.w700, fontFamily: fontName);

  static const TextStyle textStyle_13_w400_black202020 = TextStyle(
      fontSize: 13, color: ColorResource.color_cc_text_black_light, fontWeight: FontWeight.w400, fontFamily: fontName);

  static const TextStyle textStyle_15_w700_black202020 = TextStyle(
      fontSize: 15, color: ColorResource.color_cc_text_black_light, fontWeight: FontWeight.w700, fontFamily: fontName);

  static const TextStyle textStyle_15_w700_black111111 =
      TextStyle(fontSize: 15, color: ColorResource.black111111, fontWeight: FontWeight.w700, fontFamily: fontName);

  static const TextStyle textStyle_15_w700_pinkFF379B = TextStyle(
      fontSize: 15,
      color: ColorResource.color_cc_text_caption_pink_light,
      fontWeight: FontWeight.w700,
      fontFamily: fontName);

  static const TextStyle textStyle_15_w400_black202020 = TextStyle(
      fontSize: 15, color: ColorResource.color_cc_text_black_light, fontWeight: FontWeight.w400, fontFamily: fontName);

  static TextStyle textStyle_16_w500_pinkF54282 =
      const TextStyle(fontSize: 16, color: ColorResource.pinkF54282, fontWeight: FontWeight.w500, fontFamily: fontName);

  static TextStyle textStyle_17_w700_pinkF54282 =
      const TextStyle(fontSize: 17, color: ColorResource.pinkF54282, fontWeight: FontWeight.w700, fontFamily: fontName);

  static TextStyle textStyle_16_w500_pinkFF379B = const TextStyle(
      fontSize: 16, color: ColorResource.color_cc_text_caption_pink, fontWeight: FontWeight.w500, fontFamily: fontName);

  static TextStyle textStyle_10_w500_pinkAE0258 =
      const TextStyle(fontSize: 10, color: ColorResource.pinkAE0258, fontWeight: FontWeight.w500, fontFamily: fontName);

  static TextStyle textStyle_10_w400_pinkAE0258 =
      const TextStyle(fontSize: 10, color: ColorResource.pinkAE0258, fontWeight: FontWeight.w400, fontFamily: fontName);

  static TextStyle textStyle_14_w700_pinkAE0258 =
      const TextStyle(fontSize: 14, color: ColorResource.pinkAE0258, fontWeight: FontWeight.w700, fontFamily: fontName);

  static TextStyle textStyle_14_w500_pinkFF379B =
      const TextStyle(fontSize: 14, color: ColorResource.pinkColor, fontWeight: FontWeight.w500, fontFamily: fontName);

  static const TextStyle textStyle_14_w700_white =
      TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700, fontFamily: fontName);

  static const TextStyle textStyle_15_w700_white =
      TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700, fontFamily: fontName);

  static const TextStyle textStyle_15_w500_blue1F4EA5 = TextStyle(
      fontSize: 15, color: ColorResource.color_deep_blue_light, fontWeight: FontWeight.w500, fontFamily: fontName);

  static const TextStyle textStyle_14_w700_blue1E3C78 =
      TextStyle(fontSize: 14, color: ColorResource.blue1E3C78, fontWeight: FontWeight.w700, fontFamily: fontName);

  static const TextStyle textStyle_12_w500_white =
      TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500, fontFamily: fontName);

  static const TextStyle textStyle_14_w400_white =
      TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w400, fontFamily: fontName);

  static const TextStyle textStyle_13_w700_white =
      TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w700, fontFamily: fontName);

  static const TextStyle textStyle_13_w400_white =
      TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w400, fontFamily: fontName);

  static TextStyle textStyle_CONCUNG_16_w400_pinkF54282 =
      const TextStyle(fontSize: 16, color: ColorResource.pinkFF0064, fontWeight: FontWeight.w500);

  static TextStyle textStyle_CONCUNG_18_w400_orangeFF9B19 =
      const TextStyle(fontSize: 18, color: ColorResource.orangeFF9B19, fontWeight: FontWeight.w400);

  static TextStyle textStyle_CONCUNG_20_w400_black404040 =
      const TextStyle(fontSize: 20, color: ColorResource.color_cc_text_caption_black, fontWeight: FontWeight.w500);

  static TextStyle textStyle_CONCUNG_24_w400_pinkF54282 =
      const TextStyle(fontSize: 24, color: ColorResource.pinkFF379B, fontWeight: FontWeight.w500);

  static TextStyle textStyle_CONCUNG_20_w400_pinkF54282 =
      const TextStyle(fontSize: 20, color: ColorResource.pinkFF379B, fontWeight: FontWeight.w500);
  static TextStyle textStyle_CONCUNG_18_w400_redFA0101 =
      const TextStyle(fontSize: 18, color: ColorResource.color_red_light);

  static TextStyle textStyle_CONCUNG_18_w400_gre67686C =
      const TextStyle(fontSize: 18, color: ColorResource.greySaleAmount);

  static OutlineInputBorder borderInputText = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent, width: 1.0),
    borderRadius: BorderRadius.circular(8.0),
  );
}
