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
      displayName ?? 'Bienvenido  Invitado',
      style: const TextStyle(
        fontSize: 18,
        color: Color(0xff2E3E5C),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
