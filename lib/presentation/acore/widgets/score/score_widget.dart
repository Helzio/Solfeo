import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/presentation/acore/widgets/guias/guia.dart';
import 'package:solfeo/presentation/acore/widgets/score/chips/level_chip.dart';

class ScoreWidget extends ConsumerWidget {
  const ScoreWidget({Key? key}) : super(key: key);

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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32,
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
                            text:
                                " (${speed == lastSpeed ? '▼' : speed > lastSpeed ? '▲' : '▼'}",
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
                        text:
                            " (${acuracy == lastAcuracy ? '▼' : acuracy > lastAcuracy ? '▲' : '▼'}",
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
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0),
            child: Guia(Colors.black),
          ),
          Row(
            children: [
              SizedBox(
                width: 76,
                child: RichText(
                  text: TextSpan(
                    text: "Nivel $nivel:  ",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Wrap(
                  children: [
                    LevelChip(
                      text: "Do4",
                      enabled: nivel >= 1,
                      isNew: nivel == 1,
                    ),
                    LevelChip(
                      text: "Sol4",
                      enabled: nivel >= 1,
                      isNew: nivel == 1,
                    ),
                    LevelChip(
                      text: "Do5",
                      enabled: nivel >= 2,
                      isNew: nivel == 2,
                    ),
                    LevelChip(
                      text: "Sol5",
                      enabled: nivel >= 2,
                      isNew: nivel == 2,
                    ),
                    LevelChip(
                      text: "La4",
                      enabled: nivel >= 3,
                      isNew: nivel == 3,
                    ),
                    LevelChip(
                      text: "Re5",
                      enabled: nivel >= 3,
                      isNew: nivel == 3,
                    ),
                    LevelChip(
                      text: "Fa4",
                      enabled: nivel >= 4,
                      isNew: nivel == 4,
                    ),
                    LevelChip(
                      text: "Si4",
                      enabled: nivel >= 4,
                      isNew: nivel == 4,
                    ),
                    LevelChip(
                      text: "Fa5",
                      enabled: nivel >= 5,
                      isNew: nivel == 5,
                    ),
                    LevelChip(
                      text: "Re4",
                      enabled: nivel >= 5,
                      isNew: nivel == 5,
                    ),
                    LevelChip(
                      text: "La5",
                      enabled: nivel >= 6,
                      isNew: nivel == 6,
                    ),
                    LevelChip(
                      text: "Si3",
                      enabled: nivel >= 6,
                      isNew: nivel == 6,
                    ),
                    LevelChip(
                      text: "Mi4",
                      enabled: nivel >= 7,
                      isNew: nivel == 7,
                    ),
                    LevelChip(
                      text: "Mi5",
                      enabled: nivel >= 7,
                      isNew: nivel == 7,
                    ),
                    LevelChip(
                      text: "Si5",
                      enabled: nivel >= 8,
                      isNew: nivel == 8,
                    ),
                    LevelChip(
                      text: "La3",
                      enabled: nivel >= 8,
                      isNew: nivel == 8,
                    ),
                    LevelChip(
                      text: "Do6",
                      enabled: nivel >= 9,
                      isNew: nivel == 9,
                    ),
                    LevelChip(
                      text: "Re6",
                      enabled: nivel >= 9,
                      isNew: nivel == 9,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0),
            child: Guia(Colors.black),
          ),
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
                  text: "0/15 minutos",
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
                    value: 0,
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0),
            child: Guia(Colors.black),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
