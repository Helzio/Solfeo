import 'dart:io';

import 'package:archive/archive.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:solfeo/acore/dio/domain/exceptions/exception.dart';
import 'package:solfeo/acore/dio/infrastructure/extensions/extension.dart';
import 'package:solfeo/features/speech/acore/domain/entities/spech_language_path.dart';

class DownloadSpeechRemote {
  final Dio _dio;
  DownloadSpeechRemote(this._dio);

  static const String _modelBaseURL = "https://alphacephei.com/vosk/models/";
  static late String _directory;
  static String get directory => _directory;

  static Future deleteLanguage(String path) async {
    try {
      final bool languageExists = await Directory(path).exists();
      if (languageExists) {
        await Directory(path).delete(recursive: true);
      }
    } on ModelException {
      return;
    }
  }

  Future<Unit> downloadSpeech({
    required Function(double) onProgress,
  }) async {
    String downloadURL;
    String downloadPath;
    _directory = await getDirectoryPath();

    try {
      final String speechURL = speechLanguageURL(SpeechLanguage.italian);
      downloadURL = '$_modelBaseURL$speechURL';
      downloadPath = await getLanguagePath();
      await deleteLanguage(downloadPath);
    } catch (e) {
      rethrow;
    }

    double totalProgress = 0;
    try {
      await _dio.download(
        downloadURL,
        downloadPath,
        options: Options(
          headers: {HttpHeaders.acceptEncodingHeader: "*"},
          responseType: ResponseType.bytes,
        ),
        onReceiveProgress: (received, total) {
          if (total != -1) {
            final double progress = received / total * 100;
            totalProgress = progress - (progress * 0.2);
          }

          onProgress(totalProgress <= 0 ? 0 : totalProgress);
        },
      );

      final zipFile = File(downloadPath);
      final bytes = await zipFile.readAsBytes();
      final archive = ZipDecoder().decodeBytes(bytes);
      await zipFile.delete();
      final double totalFiles =
          archive.isNotEmpty ? archive.length.toDouble() : 20;
      final double increment = 20 / totalFiles;

      for (final file in archive) {
        final filename = '$_directory/${file.name}';

        if (file.isFile) {
          var outFile = File(filename);
          outFile = await outFile.create(recursive: true);
          await outFile.writeAsBytes(file.content as List<int>);
          totalProgress += increment;

          onProgress(totalProgress);
        }
      }

      if (totalProgress != 100) {
        onProgress(100);
      }

      return unit;
    } on DioError catch (e) {
      if (e.isConnectionError) {
        throw InternetException();
      } else {
        throw ServerException(error: e.error.toString());
      }
    }
  }
}
