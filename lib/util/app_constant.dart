import 'package:sisonke/data/model/response/language_model.dart';


class AppConstants {

  static const APP_NAME = "Sisonke";
  static const String BASE_URL = 'https://dukkanapp.online';

  static const String THEME = 'theme';

  // sharePreference
  static const String TOKEN = 'token';
  static const String LANG_KEY = 'lang';


  static const String COUNTRY_CODE = 'country_code';
  static const String LANGUAGE_CODE = 'language_code';
  static const double TAB_HEIGHT = 0.14;


  static List<LanguageModel> languages = [
    LanguageModel(imageUrl: '', languageName: 'English', countryCode: 'US', languageCode: 'en'),
    LanguageModel(imageUrl: '', languageName: 'Arabic', countryCode: 'SA', languageCode: 'ar'),
  ];
}
