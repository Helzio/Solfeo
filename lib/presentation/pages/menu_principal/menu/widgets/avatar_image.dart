import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:solfeo/features/google_singin/provider/login_provider.dart';

class AvatarImage extends ConsumerWidget {
  const AvatarImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photoURL = ref
        .watch(loginProvider)
        .maybeWhen(orElse: () => null, logged: (user) => user.photoURL);
    return photoURL == null
        ? CircleAvatar(
            radius: kIsWeb || Platform.isMacOS ? 28 : 40,
            backgroundColor: Colors.transparent,
            child: OverflowBox(
              maxHeight: kIsWeb || Platform.isMacOS ? 90 : 132,
              maxWidth: kIsWeb || Platform.isMacOS ? 90 : 132,
              child: Transform.translate(
                offset: const Offset(-2, 0),
                child: Lottie.asset(
                  'assets/animations/avatar.json',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        : CircleAvatar(
            radius: kIsWeb || Platform.isMacOS ? 28 : 40,
            backgroundImage: CachedNetworkImageProvider(photoURL),
          );
  }
}
