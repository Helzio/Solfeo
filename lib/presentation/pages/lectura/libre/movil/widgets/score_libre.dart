import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';

class ScoreLibre extends ConsumerWidget {
  const ScoreLibre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nivel =
        ref.watch(lecturaLibreProvider.select((value) => value.level));

    final acuracy =
        ref.watch(lecturaLibreProvider.select((value) => value.accuracy));

    final score =
        ref.watch(lecturaLibreProvider.select((value) => value.score));
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            const SizedBox(
              width: 16,
            ),
            Text(
              "Nivel $nivel",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: true ? Colors.grey.shade800 : Colors.white,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              width: 16,
            ),
            Text(
              "𝅘𝅥",
              maxLines: 1,
              overflow: TextOverflow.visible,
              textAlign: TextAlign.center,
            ),
            Text(
              " = 0",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: true ? Colors.grey.shade800 : Colors.white,
              ),
            ),
            Expanded(child: Container()),
            Text(
              "Precisión: ",
              maxLines: 1,
              overflow: TextOverflow.visible,
              style: TextStyle(
                fontSize: 15,
                color: true ? Colors.grey.shade800 : Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              acuracy.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: true ? Colors.grey.shade800 : Colors.white,
              ),
            ),
            Expanded(child: Container()),
            Text(
              "Score: ",
              maxLines: 1,
              overflow: TextOverflow.visible,
              style: TextStyle(
                fontSize: 15,
                color: true ? Colors.grey.shade800 : Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              score.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: true ? Colors.grey.shade800 : Colors.white,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
