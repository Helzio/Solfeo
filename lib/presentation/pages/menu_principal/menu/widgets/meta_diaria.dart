import 'package:flutter/material.dart';
import 'package:solfeo/presentation/pages/menu_principal/menu/widgets/user_name.dart';

class MetaDiariaWidget extends StatelessWidget {
  const MetaDiariaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const UserName(),
        const SizedBox(
          height: 4,
        ),
        const LinearProgressIndicator(
          value: .0,
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
                "0/10 min.",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
