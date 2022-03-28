import 'dart:io';

import 'package:path_provider/path_provider.dart';

enum SpeechLanguage {
  english,
  indianEnglish,
  chinese,
  russian,
  french,
  german,
  spanish,
  portuguese,
  turkish,
  vietnamese,
  italian,
  catalan,
  farsi
}

Future<String> getDirectoryPath({String directory = 'models'}) async {
  final String rootDir = (await getApplicationDocumentsDirectory()).path;
  final _directory = '$rootDir/$directory';
  await Directory(_directory).create();
  return _directory;
}

Future<String> getLanguagePath({
  SpeechLanguage speechLanguage = SpeechLanguage.italian,
}) async {
  final String speechURL = speechLanguageURL(SpeechLanguage.italian);
  return '${await getDirectoryPath()}/$speechURL';
}

String speechLanguageURL(SpeechLanguage language) {
  switch (language) {
    case SpeechLanguage.english:
      return "vosk-model-small-en-us-0.4.zip";
    case SpeechLanguage.indianEnglish:
      return "vosk-model-small-en-in-0.4.zip";
    case SpeechLanguage.chinese:
      return "vosk-model-small-cn-0.3.zip";
    case SpeechLanguage.russian:
      return "vosk-model-small-ru-0.4.zip";
    case SpeechLanguage.french:
      return "vosk-model-small-fr-pguyot-0.3.zip";
    case SpeechLanguage.german:
      return "vosk-model-small-de-zamia-0.3.zip";
    case SpeechLanguage.spanish:
      return "vosk-model-small-es-0.3.zip";
    case SpeechLanguage.portuguese:
      return "vosk-model-small-pt-0.3.zip";
    case SpeechLanguage.turkish:
      return "vosk-model-small-tr-0.3.zip";
    case SpeechLanguage.vietnamese:
      return "vosk-model-small-vn-0.3.zip";
    case SpeechLanguage.italian:
      return "vosk-model-small-it-0.4.zip";
    case SpeechLanguage.catalan:
      return "vosk-model-small-ca-0.4.zip";
    case SpeechLanguage.farsi:
      return "vosk-model-small-fa-0.4.zip";
  }
}
