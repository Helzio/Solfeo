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
        LinearProgressIndicator(
          value: totalTime / 600000,
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "Progreso:",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Expanded(child: Container()),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "${(totalTime / 1000 / 60).toStringAsFixed(1)}/10 minutos",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
