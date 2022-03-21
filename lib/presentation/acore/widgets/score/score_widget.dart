import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/presentation/acore/widgets/guias/guia.dart';

class ScoreWidget extends ConsumerWidget {
  const ScoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nivel =
        ref.watch(lecturaLibreProvider.select((value) => value.level));

    final acuracy =
        ref.watch(lecturaLibreProvider.select((value) => value.accuracy));

    final score =
        ref.watch(lecturaLibreProvider.select((value) => value.score));

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 100,
                child: RichText(
                  text: TextSpan(
                    text: "Velocidad:  ",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: RichText(
                  text: TextSpan(
                    text: "",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade600,
                    ),
                    children: [
                      const TextSpan(
                        text: "𝅘𝅥-",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: "BravuraText",
                        ),
                      ),
                      TextSpan(
                        text: "= 0",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 32,
              ),
              RichText(
                text: TextSpan(
                  text: "Precisión:  ",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade600,
                  ),
                  children: [
                    TextSpan(
                      text: acuracy.toStringAsFixed(2),
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 32,
              ),
              RichText(
                text: TextSpan(
                  text: "Score:  ",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade600,
                  ),
                  children: [
                    TextSpan(
                      text: score.toStringAsFixed(2),
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ],
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
                width: 100,
                child: RichText(
                  text: TextSpan(
                    text: "Nivel actual:  ",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "Nivel $nivel",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade800,
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
                width: 100,
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
                  text: "1/15 minutos",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(1),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey.shade300,
                    value: .33,
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
