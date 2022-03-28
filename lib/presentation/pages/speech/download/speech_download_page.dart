import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:solfeo/features/speech/download/application/download_speech_notifer.dart';
import 'package:solfeo/features/speech/download/providers/download_speech_providers.dart';
import 'package:solfeo/features/speech/speech/providers/speech_providers.dart';

class SpeechDownloadPage extends ConsumerWidget {
  const SpeechDownloadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final downloadState = ref.watch(downloadSpeechProvider);
    ref.listen<DownloadSpeechState>(downloadSpeechProvider, (previous, next) {
      next.maybeWhen(
        orElse: () => null,
        loaded: () {
          ref.read(speechProvider.notifier).load();
          AutoRouter.of(context).pop();
        },
      );
    });

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text("Reconocimiento de voz"),
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        color: Colors.black.withOpacity(.9),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.translate(
                offset: const Offset(
                  0,
                  56,
                ),
                child: Lottie.asset(
                  'assets/animations/mic2.json',
                  onLoaded: (composition) {},
                ),
              ),
              const Text(
                "Con el reconocimiento de voz podrás realizar el ejercicio con tu voz.",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Para activar el reconocimiento de voz es necesario descargar un archivo de 34.3 Mb.",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 40,
                child: downloadState.when(
                  initial: () => ElevatedButton(
                    onPressed: () {
                      ref
                          .read(downloadSpeechProvider.notifier)
                          .downloadLanguage();
                    },
                    child: const Text(
                      "Descargar archivo de reconocimiento de voz",
                    ),
                  ),
                  loading: (progress) => Column(
                    children: [
                      Text(
                        "Descargando %${progress.toStringAsFixed(2)}",
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      LinearProgressIndicator(
                        value: progress / 100,
                      ),
                    ],
                  ),
                  loaded: () => Container(),
                  failure: (f) => const Text(
                    "Ha ocurrido un problema al descargar el archivo. Intentalo de nuevo más tarde.",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
