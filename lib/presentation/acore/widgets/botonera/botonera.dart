import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:offline_speech_recognition/model/speech_partial.dart';
import 'package:solfeo/features/lectura_ejercicio/providers/lectura_ejercicio_providers.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/features/pentagrama/domain/entities/pentagrama.dart';
import 'package:solfeo/features/speech/download/providers/download_speech_providers.dart';
import 'package:solfeo/features/speech/speech/application/speech_notifier.dart';
import 'package:solfeo/features/speech/speech/providers/speech_providers.dart';
import 'package:solfeo/routes/app_route.gr.dart';

enum Size { small, normal, big }

class Botonera extends ConsumerStatefulWidget {
  final Color color;
  final Color colorSecundary;
  const Botonera({
    Key? key,
    required this.color,
    required this.colorSecundary,
  }) : super(key: key);

  @override
  ConsumerState<Botonera> createState() => _BotoneraState();
}

class _BotoneraState extends ConsumerState<Botonera> {
  final isThemeWhite = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton.small(
        backgroundColor: widget.color,
        onPressed: () {
          ref.read(lecturaEjercicioProvider.notifier).generateNotes();
        },
        child: Icon(
          Icons.refresh,
          color: Colors.grey.shade800,
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Circulo(
            colorSecundary: widget.colorSecundary,
          ),
          BotonNota(
            nota: 0,
            color: widget.color,
            colorSecundary: widget.colorSecundary,
          ),
          BotonNota(
            nota: 1,
            color: widget.color,
            colorSecundary: widget.colorSecundary,
          ),
          BotonNota(
            nota: 2,
            color: widget.color,
            colorSecundary: widget.colorSecundary,
          ),
          BotonNota(
            nota: 3,
            color: widget.color,
            colorSecundary: widget.colorSecundary,
          ),
          BotonNota(
            nota: 4,
            color: widget.color,
            colorSecundary: widget.colorSecundary,
          ),
          BotonNota(
            nota: 5,
            color: widget.color,
            colorSecundary: widget.colorSecundary,
          ),
          BotonNota(
            nota: 6,
            color: widget.color,
            colorSecundary: widget.colorSecundary,
          ),
          /* Container(
          height: 48,
          width: 48,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ResetButton(
            color: widget.color,
            colorSecundary: widget.colorSecundary,
          ),
        ), */

          const SpeechText(),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                children: const [
                  MuteButton(),
                  VoiceButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SpeechText extends ConsumerWidget {
  const SpeechText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return StreamBuilder(
      stream: ref.read(speechProvider.notifier).onPartial(),
      builder: (BuildContext context, AsyncSnapshot<SpeechPartial> snapshot) {
        if (snapshot.hasData) {
          return Center(
            child: Text(
              snapshot.data!.partial.split(" ").last,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        } else {
          return const Center(
            child: Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          );
        }
      },
    );
  }
}

class VoiceButton extends ConsumerStatefulWidget {
  const VoiceButton({Key? key}) : super(key: key);

  @override
  ConsumerState<VoiceButton> createState() => _VoiceButtonState();
}

class _VoiceButtonState extends ConsumerState<VoiceButton> {
  List<String> notas = [];
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(speechProvider.notifier).load());
  }

  @override
  Widget build(BuildContext context) {
    final speechstate = ref.watch(speechProvider);

    ref.listen<SpeechState>(speechProvider, (previous, next) {
      next.maybeWhen(
        orElse: () => null,
        listening: (string) {
          final notasString = string.trim();
          if (notasString.isNotEmpty) {
            final newNotas = notasString.split(" ");
            if (newNotas != notas) {
              //! Más larga
              if (newNotas.length > notas.length) {
                if (notas.isNotEmpty) {
                  newNotas.removeRange(0, notas.length);
                }
                for (final nota in newNotas) {
                  ref.read(lecturaLibreProvider.notifier).setEnterNote(
                        BotonNota.notas[BotonNota.nombreNotas.indexOf(nota)],
                        voz: true,
                      );
                }
                notas = [...notas, ...newNotas];
              } else if (newNotas.length < notas.length) {
                //! reset
                notas = newNotas;
                for (final nota in notas) {
                  ref.read(lecturaLibreProvider.notifier).setEnterNote(
                        BotonNota.notas[BotonNota.nombreNotas.indexOf(nota)],
                        voz: true,
                      );
                }
              }
            }
          } else {
            notas = [];
          }
        },
      );
    });

    return speechstate.maybeWhen(
      orElse: () => const IconButton(
        onPressed: null,
        icon: Icon(Icons.record_voice_over_outlined),
      ),
      noFile: () => IconButton(
        onPressed: () {
          ref.read(downloadSpeechProvider.notifier).reset();
          AutoRouter.of(context).push(const SpeechDownloadRoute());
        },
        icon: const Icon(
          Icons.voice_over_off_outlined,
          color: Colors.red,
        ),
      ),
      loaded: () => IconButton(
        onPressed: () {
          ref.read(speechProvider.notifier).start();
        },
        icon: const Icon(
          Icons.record_voice_over_outlined,
        ),
      ),
      listening: (text) => IconButton(
        onPressed: () {
          ref.read(speechProvider.notifier).stop();
        },
        icon: const Icon(
          Icons.record_voice_over_outlined,
          color: Colors.green,
        ),
      ),
    );
  }
}

class MuteButton extends ConsumerWidget {
  const MuteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mutted =
        ref.watch(lecturaLibreProvider.select((value) => value.mutted));
    return IconButton(
      onPressed: () {
        ref.read(lecturaLibreProvider.notifier).toogleMutted();
      },
      icon: Icon(
        !mutted ? Icons.volume_off_outlined : Icons.volume_up_outlined,
      ),
    );
  }
}

class ResetButton extends ConsumerWidget {
  final Size size;
  final Color color;
  final Color colorSecundary;
  const ResetButton({
    Key? key,
    required this.color,
    required this.colorSecundary,
    this.size = Size.normal,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    return ElevatedButton(
      onPressed: () {
        ref.read(lecturaLibreProvider.notifier).generateNotes();
      },
      style: ElevatedButton.styleFrom(
        primary: color,
        padding: EdgeInsets.zero,
        shape: const StadiumBorder(),
      ),
      child: Center(
        child: Icon(
          Icons.refresh,
          size: size == Size.normal ? 12 : 14,
          color: colorSecundary,
        ),
      ),
    );
  }
}

class Circulo extends StatefulWidget {
  final Size size;
  final Color colorSecundary;
  const Circulo({
    Key? key,
    this.size = Size.normal,
    required this.colorSecundary,
  }) : super(key: key);

  @override
  State<Circulo> createState() => _CirculoState();
}

class _CirculoState extends State<Circulo> {
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Padding(
        padding: EdgeInsets.all(
          widget.size == Size.normal ? 32 : 39.0,
        ),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color: widget.colorSecundary,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BotonNota extends ConsumerStatefulWidget {
  final int nota;
  final Size size;
  final Color color;
  final Color colorSecundary;
  static const nombreNotas = ["do", "re", "mi", "fa", "sol", "la", "si"];
  static List<Nota> notas = [
    Nota.initial(Tono.Do),
    Nota.initial(Tono.Re),
    Nota.initial(Tono.Mi),
    Nota.initial(Tono.Fa),
    Nota.initial(Tono.Sol),
    Nota.initial(Tono.La),
    Nota.initial(Tono.Si),
  ];
  const BotonNota({
    Key? key,
    required this.nota,
    required this.color,
    required this.colorSecundary,
    this.size = Size.normal,
  }) : super(key: key);

  @override
  ConsumerState<BotonNota> createState() => _BotonNotaState();
}

class _BotonNotaState extends ConsumerState<BotonNota> {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: widget.nota * 0.8975979010239272,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: widget.size == Size.normal ? 64 : 80,
          width: widget.size == Size.normal ? 64 : 80,
          decoration: BoxDecoration(
            color: widget.color,
            shape: BoxShape.circle,
          ),
          child: Align(
            child: Container(
              height: widget.size == Size.normal ? 48 : 64,
              width: widget.size == Size.normal ? 48 : 64,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ElevatedButton(
                onPressed: () {
                  ref
                      .read(lecturaLibreProvider.notifier)
                      .setEnterNote(BotonNota.notas[widget.nota]);
                },
                style: ElevatedButton.styleFrom(
                  primary: widget.color,
                  padding: EdgeInsets.zero,
                  shape: const StadiumBorder(),
                ),
                child: Center(
                  child: Transform.rotate(
                    angle: -(widget.nota * 0.8975979010239272),
                    child: Text(
                      BotonNota.nombreNotas[widget.nota].toUpperCase(),
                      style: TextStyle(
                        fontSize: widget.size == Size.normal ? 12 : 14,
                        color: widget.colorSecundary,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
