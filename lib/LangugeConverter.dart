import 'package:flutter_training/Language.dart';

mixin LanguageConverter {
  Language convert(String languge) {
    switch (languge) {
      case "English":
        return Language.English;
      case "Russian":
        return Language.Russian;
      case "Spanish":
        return Language.Spanish;
      default:
        return Language.NoData;
    }
  }
}
