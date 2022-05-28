import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:solfeo/features/google_singin/provider/login_provider.dart';
import 'package:solfeo/presentation/acore/utils/colors.dart';

class LogoutTile extends ConsumerWidget {
  const LogoutTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: colorPastel11,
        ),
        child: const Icon(
          MdiIcons.logout,
          color: Colors.white,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
      horizontalTitleGap: 16,
      title: const Text(
        "Cerrar sesión",
        style: TextStyle(
          color: Color(0xff2E3E5C),
          fontSize: 12,
        ),
      ),
      onTap: () async {
        ref.read(loginProvider.notifier).singOut();
      },
    );
  }
}
