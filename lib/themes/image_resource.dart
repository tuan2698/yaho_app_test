const ICON_SVG_PATH = "resources/images/icon_svg/";
const ICON_PNG_PATH = "resources/images/icon_png/";
const ICON_JSON_PATH = "resources/images/loties/";
const String EXTENSION_SVG = ".svg";
const String EXTENSION_PNG = ".png";
const String EXTENSION_JPG = ".jpg";
const String EXTENSION_JSON = ".json";
const String EXTENSION_GIF = ".gif";

class ImageResource {
  //SVG File Path

  //PNG File Path
  static String splash_screen = getJPgSourcePath('splash_screen');
  static String heart_selected = getPngSourcePath('heart_selected');
  static String heart_unselected = getPngSourcePath('heart_unselected');
  static String facebook = getPngSourcePath('facebook');
  static String gmail = getPngSourcePath('gmail');
  static String uk = getPngSourcePath('uk');
  static String vietnam = getPngSourcePath('vietnam');
  static String empty = getPngSourcePath('empty');
  static String error = getPngSourcePath('error');

  ///json

  ///gif

  static String placeHolder =
      "https://media.istockphoto.com/id/1327592506/vi/vec-to/bi%E1%BB%83u-t%C6%B0%E1%BB%A3ng-ch%E1%BB%97-d%C3%A0nh-s%E1%BA%B5n-%E1%BA%A3nh-%C4%91%E1%BA%A1i-di%E1%BB%87n-m%E1%BA%B7c-%C4%91%E1%BB%8Bnh-%E1%BA%A3nh-%C4%91%E1%BA%A1i-di%E1%BB%87n-m%C3%A0u-x%C3%A1m-doanh-nh%C3%A2n.jpg?s=1024x1024&w=is&k=20&c=BX9oFtYdk-SqS51mHe6yWh9SZRSPFhszAcgh5E-jn_s=";
}

String getSvgSourcePath(String name) => ICON_SVG_PATH + name + EXTENSION_SVG;

String getPngSourcePath(String name) => ICON_PNG_PATH + name + EXTENSION_PNG;

String getJPgSourcePath(String name) => ICON_PNG_PATH + name + EXTENSION_JPG;

String getLotieSourcePath(String name) => ICON_JSON_PATH + name + EXTENSION_JSON;
String getGifSourcePath(String name) => ICON_JSON_PATH + name + EXTENSION_GIF;
