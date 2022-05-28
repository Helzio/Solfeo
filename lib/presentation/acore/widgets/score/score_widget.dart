import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/features/pentagrama/domain/entities/pentagrama.dart';
import 'package:solfeo/presentation/acore/widgets/guias/guia.dart';
import 'package:solfeo/presentation/acore/widgets/score/chips/level_chip.dart';

class ScoreWidget extends ConsumerWidget {
  final bool showNivel;
  final bool showMetaDiaria;
  const ScoreWidget({
    Key? key,
    this.showNivel = true,
    this.showMetaDiaria = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nivel =
        ref.watch(lecturaLibreProvider.select((value) => value.level));

    final acuracy =
        ref.watch(lecturaLibreProvider.select((value) => value.accuracy));

    final lastAcuracy =
        ref.watch(lecturaLibreProvider.select((value) => value.lastAccuracy));

    final speed =
        ref.watch(lecturaLibreProvider.select((value) => value.speed.toInt()));

    final lastSpeed = ref
        .watch(lecturaLibreProvider.select((value) => value.lastSpeed.toInt()));

    final totalTime =
        ref.watch(lecturaLibreProvider.select((value) => value.totalTime));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0),
            child: Guia(Colors.black),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Row(
                  children: [
                    SizedBox(
                      width: 80,
                      child: RichText(
                        text: TextSpan(
                          text: "Velocidad:",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey.shade600,
                        ),
                        children: [
                          const TextSpan(
                            text: "𝅘𝅥=",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: "BravuraText",
                            ),
                          ),
                          TextSpan(
                            text: "= ${speed.toString()}",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          TextSpan(
                            text: kIsWeb || Platform.isMacOS
                                ? " (${speed == lastSpeed ? ' - ' : speed > lastSpeed ? ' + ' : ' - '}"
                                : " (${speed == lastSpeed ? '▼' : speed > lastSpeed ? '▲' : '▼'}",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: speed == lastSpeed
                                  ? Colors.grey.shade800
                                  : speed > lastSpeed
                                      ? Colors.green
                                      : Colors.red,
                            ),
                          ),
                          TextSpan(
                            text: "${(speed - lastSpeed).abs().toString()})",
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: speed == lastSpeed
                                  ? Colors.grey.shade800
                                  : speed > lastSpeed
                                      ? Colors.green
                                      : Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(
                    text: "Precisión:  ",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade600,
                    ),
                    children: [
                      TextSpan(
                        text: "%${acuracy.toStringAsFixed(2)}",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      TextSpan(
                        text: kIsWeb || Platform.isMacOS
                            ? " (${acuracy == lastAcuracy ? ' - ' : acuracy > lastAcuracy ? ' + ' : ' - '}"
                            : " (${acuracy == lastAcuracy ? '▼' : acuracy > lastAcuracy ? '▲' : '▼'}",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: acuracy == lastAcuracy
                              ? Colors.grey.shade800
                              : acuracy > lastAcuracy
                                  ? Colors.green
                                  : Colors.red,
                        ),
                      ),
                      TextSpan(
                        text:
                            "${(acuracy - lastAcuracy).abs().toStringAsFixed(2)})",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: acuracy == lastAcuracy
                              ? Colors.grey.shade800
                              : acuracy > lastAcuracy
                                  ? Colors.green
                                  : Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          if (showNivel)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: Guia(Colors.black),
            ),
          if (showNivel)
            Row(
              children: [
                SizedBox(
                  width: 50,
                  child: RichText(
                    text: TextSpan(
                      text: "Nivel ${nivel < 10 ? nivel : 'X'}",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ),
                AbsorbPointer(
                  child: Opacity(
                    opacity: 0,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 2,
                        ),
                        InkResponse(
                          radius: 16,
                          onTap: () {
                            ref
                                .read(lecturaLibreProvider.notifier)
                                .removeLevel();
                          },
                          child: const Icon(
                            Icons.remove_circle_outline,
                            size: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        InkResponse(
                          radius: 16,
                          onTap: () {
                            ref.read(lecturaLibreProvider.notifier).addLevel();
                          },
                          child: const Icon(
                            Icons.add_circle_outline,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Wrap(
                    children: [
                      LevelChip(
                        text: "Do4",
                        enabled: nivel >= 1,
                        nota: Nota.nivel(Tono.Do, Ocatava.Cuarta),
                      ),
                      LevelChip(
                        text: "Sol4",
                        enabled: nivel >= 1,
                        nota: Nota.nivel(Tono.Sol, Ocatava.Cuarta),
                      ),
                      LevelChip(
                        text: "Do5",
                        enabled: nivel >= 2,
                        nota: Nota.nivel(Tono.Do, Ocatava.Quinta),
                      ),
                      LevelChip(
                        text: "Sol5",
                        enabled: nivel >= 2,
                        nota: Nota.nivel(Tono.Sol, Ocatava.Quinta),
                      ),
                      LevelChip(
                        text: "La4",
                        enabled: nivel >= 3,
                        nota: Nota.nivel(Tono.La, Ocatava.Cuarta),
                      ),
                      LevelChip(
                        text: "Re5",
                        enabled: nivel >= 3,
                        nota: Nota.nivel(Tono.Re, Ocatava.Quinta),
                      ),
                      LevelChip(
                        text: "Fa4",
                        enabled: nivel >= 4,
                        nota: Nota.nivel(Tono.Fa, Ocatava.Cuarta),
                      ),
                      LevelChip(
                        text: "Si4",
                        enabled: nivel >= 4,
                        nota: Nota.nivel(Tono.Si, Ocatava.Cuarta),
                      ),
                      LevelChip(
                        text: "Fa5",
                        enabled: nivel >= 5,
                        nota: Nota.nivel(Tono.Fa, Ocatava.Quinta),
                      ),
                      LevelChip(
                        text: "Re4",
                        enabled: nivel >= 5,
                        nota: Nota.nivel(Tono.Re, Ocatava.Cuarta),
                      ),
                      LevelChip(
                        text: "La5",
                        enabled: nivel >= 6,
                        nota: Nota.nivel(Tono.La, Ocatava.Quinta),
                      ),
                      LevelChip(
                        text: "Si3",
                        enabled: nivel >= 6,
                        nota: Nota.nivel(Tono.Si, Ocatava.Tercera),
                      ),
                      LevelChip(
                        text: "Mi4",
                        enabled: nivel >= 7,
                        nota: Nota.nivel(Tono.Mi, Ocatava.Cuarta),
                      ),
                      LevelChip(
                        text: "Mi5",
                        enabled: nivel >= 7,
                        nota: Nota.nivel(Tono.Mi, Ocatava.Quinta),
                      ),
                      LevelChip(
                        text: "Si5",
                        enabled: nivel >= 8,
                        nota: Nota.nivel(Tono.Si, Ocatava.Quinta),
                      ),
                      LevelChip(
                        text: "La3",
                        enabled: nivel >= 8,
                        nota: Nota.nivel(Tono.La, Ocatava.Tercera),
                      ),
                      LevelChip(
                        text: "Do6",
                        enabled: nivel >= 9,
                        nota: Nota.nivel(Tono.Do, Ocatava.Sexta),
                      ),
                      LevelChip(
                        text: "Re6",
                        enabled: nivel >= 9,
                        nota: Nota.nivel(Tono.Re, Ocatava.Sexta),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          const SizedBox(
            height: 4,
          ),
          if (showMetaDiaria)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: Guia(Colors.black),
            ),
          if (showMetaDiaria)
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: RichText(
                    text: TextSpan(
                      text: "Meta diaria:  ",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text:
                        "${(totalTime / 1000 / 60).toStringAsFixed(1)}/10 minutos",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.grey.shade300,
                      value: totalTime / 600000,
                    ),
                  ),
                ),
              ],
            ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0),
            child: Guia(Colors.black),
          ),
          Row(
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: "",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey.shade600,
                  ),
                  children: [
                    TextSpan(
                      text:
                          "Velocidad >100 y precisión >90 para subir de nivel*",
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
