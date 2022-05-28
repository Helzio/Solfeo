import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/google_singin/application/login_notifier.dart';
import 'package:solfeo/features/google_singin/provider/login_provider.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/routes/app_route.gr.dart';

class AppWidget extends ConsumerStatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends ConsumerState<AppWidget> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    ref.listen<LoginState>(loginProvider, (_, state) {
      state.maybeWhen(
        orElse: () => null,
        logged: (_) {
          ref.read(lecturaLibreProvider.notifier).resetCache();
          ref.refresh(lecturaLibreProvider);
          return _appRouter.pushAndPopUntil(
            const MenuPrincipalRoute(),
            predicate: (_) => false,
          );
        },
        notLogged: () {
          ref.read(lecturaLibreProvider.notifier).resetCache();
          ref.refresh(lecturaLibreProvider);
          return _appRouter.pushAndPopUntil(
            const OnboardRoute(),
            predicate: (_) => false,
          );
        },
      );
    });
    return MaterialApp.router(
      title: 'Solfa',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData.light(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
