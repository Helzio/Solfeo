import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/google_singin/provider/login_provider.dart';

class UserName extends ConsumerWidget {
  const UserName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final displayName = ref
        .watch(loginProvider)
        .maybeWhen(orElse: () => null, logged: (user) => user.displayName);
    return Text(
      displayName ?? 'Invitado',
      maxLines: 1,
      style: TextStyle(
        fontSize: kIsWeb || Platform.isMacOS ? 13 : 18,
        color: const Color(0xff2E3E5C),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
