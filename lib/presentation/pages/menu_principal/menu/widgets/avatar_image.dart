import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        ? Image.asset(
            "assets/images/avatar.png",
            width: 80,
            height: 80,
          )
        : CircleAvatar(
            radius: 40,
            backgroundImage: CachedNetworkImageProvider(photoURL),
          );
  }
}
