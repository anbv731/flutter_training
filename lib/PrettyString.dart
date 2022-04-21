import 'Language.dart';

extension PrettyString on Language {
  String toPrettyString() {
    switch (this) {
      case Language.English:
        return "Английский";
      case Language.Russian:
        return "Русский";
      case Language.Spanish:
        return "Испанский";
      default:
        return "Нет данных";
    }
  }
}