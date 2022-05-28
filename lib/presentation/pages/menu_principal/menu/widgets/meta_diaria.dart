import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/presentation/pages/menu_principal/menu/widgets/user_name.dart';

class MetaDiariaWidget extends ConsumerWidget {
  const MetaDiariaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalTime =
        ref.watch(lecturaLibreProvider.select((value) => value.totalTime));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const UserName(),
        const SizedBox(
          height: 4,
        ),
        Padding(
          padding: kIsWeb || Platform.isMacOS
              ? const EdgeInsets.only(right: 2.0)
              : EdgeInsets.zero,
          child: LinearProgressIndicator(
            value: totalTime / 600000,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            if (!kIsWeb && !Platform.isMacOS)
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  "Progreso:",
                  style: Theme.of(context).textTheme.caption,
                ),
              ),
            if (!kIsWeb && !Platform.isMacOS) Expanded(child: Container()),
            Align(
              alignment: kIsWeb || Platform.isMacOS
                  ? Alignment.center
                  : Alignment.topRight,
              child: Text(
                "${(totalTime / 1000 / 60).toStringAsFixed(1)}/10 minutos",
                style: kIsWeb || Platform.isMacOS
                    ? const TextStyle(
                        fontSize: 10,
                        color: Colors.black,
                      )
                    : Theme.of(context).textTheme.caption,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
