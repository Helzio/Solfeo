import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/acore/ejercicios/ejercicios.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/presentation/acore/widgets/guias/guia.dart';

class PentagramaLibre extends ConsumerWidget {
  const PentagramaLibre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isThemeWhite = true;
    final state = ref.watch(lecturaLibreProvider);
    if (state.notes.isEmpty) {
      Future.microtask(
        () => ref.read(lecturaLibreProvider.notifier).generateNotes(),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return MediaQuery.of(context).size.width > 600
            ? SizedBox(
                height: 50,
                child: Container(
                  height: 50,
                  color: Colors.red,
                  child: PentagramaSuelto(
                    pentagramaSize: constraints.maxHeight / 3,
                    startIndex: 0,
                    endIndex: 14,
                    isEnd: true,
                  ),
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PentagramaSuelto(
                    pentagramaSize: constraints.maxHeight / 3,
                    startIndex: 0,
                    endIndex: 9,
                  ),
                  PentagramaSuelto(
                    pentagramaSize: constraints.maxHeight / 3,
                    startIndex: 10,
                    endIndex: 19,
                  ),
                  PentagramaSuelto(
                    pentagramaSize: constraints.maxHeight / 3,
                    startIndex: 20,
                    endIndex: 29,
                    isEnd: true,
                  ),
                ],
              );
      },
    );
  }
}

class PentagramaSuelto extends ConsumerWidget {
  final double pentagramaSize;
  final int startIndex;
  final int endIndex;
  final bool isEnd;

  const PentagramaSuelto({
    Key? key,
    required this.pentagramaSize,
    required this.startIndex,
    required this.endIndex,
    this.isEnd = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notas =
        ref.watch(lecturaLibreProvider.select((value) => value.notes));
    return SizedBox(
      height: 100,
      child: Container(
        color: Colors.yellow,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                child: LineasPentagrama(pentagramaSize: pentagramaSize),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  CeldaSimbolo(
                    pentagramaSize: pentagramaSize,
                    simbolo: "𝄞",
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Flexible(
                    child: notas.isEmpty
                        ? Container()
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ...List.generate(
                                MediaQuery.of(context).size.width > 600
                                    ? 30
                                    : 10,
                                (index) => CeldaNota(
                                  pentagramaSize: pentagramaSize,
                                  nota: notasMap[notas[startIndex + index]] ??
                                      -33,
                                  index: startIndex + index,
                                ),
                              ),
                            ],
                          ),
                  ),
                  if (isEnd)
                    CeldaSimbolo(
                      pentagramaSize: pentagramaSize,
                      simbolo: "𝄁",
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CeldaNota extends ConsumerWidget {
  final double pentagramaSize;
  final int nota;
  final int tipo;
  final int index;
  const CeldaNota({
    Key? key,
    required this.pentagramaSize,
    this.nota = 0,
    this.tipo = 0,
    required this.index,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const isThemeWhite = true;
    final match = ref.watch(
      lecturaLibreProvider.select(
        (value) => value.index == index,
      ),
    );
    final error = ref.watch(
      lecturaLibreProvider.select(
        (value) => value.listErrorIndex.contains(index),
      ),
    );
    final passed = ref.watch(
      lecturaLibreProvider.select(
        (value) => value.index > index,
      ),
    );

    if (nota == -33) {
      return Center(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: match ? Colors.white10 : Colors.transparent,
          ),
          height: pentagramaSize * .7,
          child: SizedBox(
            height: pentagramaSize * .5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Align(
                child: SizedBox(
                  height: pentagramaSize,
                  width: pentagramaSize * .15,
                  child: Align(
                    child: SizedBox(
                      height: pentagramaSize * .5,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            tipo == 0 ? "𝅘𝅥" : "𝅘𝅥𝅮",
                            maxLines: 1,
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    final noteStyle = TextStyle();

    return Center(
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: match ? Colors.black12 : Colors.transparent,
        ),
        height: pentagramaSize * .7,
        child: SizedBox(
          height: pentagramaSize * .5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Stack(
              children: [
                if (nota <= 2)
                  Align(
                    child: Transform.translate(
                      offset: Offset(0, -(pentagramaSize * .035) * nota),
                      child: SizedBox(
                        height: pentagramaSize,
                        width: pentagramaSize * .15,
                        child: Align(
                          child: SizedBox(
                            height: pentagramaSize * .5,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  tipo == 0 ? "𝅘𝅥" : "𝅘𝅥𝅮",
                                  maxLines: 1,
                                  overflow: TextOverflow.visible,
                                  style: noteStyle,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if (nota > 2)
                  Align(
                    child: Transform.translate(
                      offset: Offset(
                        0,
                        -(pentagramaSize * .035) * (nota - 5) +
                            pentagramaSize * .012,
                      ),
                      child: SizedBox(
                        height: pentagramaSize,
                        width: pentagramaSize * .15,
                        child: Align(
                          child: SizedBox(
                            height: pentagramaSize * .5,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Container(
                                alignment: Alignment.center,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Transform.rotate(
                                      angle: 180 * math.pi / 180,
                                      child: Text(
                                        "𝅘𝅥",
                                        maxLines: 1,
                                        overflow: TextOverflow.visible,
                                        style: noteStyle,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    if (tipo == 1)
                                      Transform.translate(
                                        offset: Offset(
                                          -pentagramaSize * .014,
                                          pentagramaSize * .175,
                                        ),
                                        child: Transform(
                                          transform: Matrix4.rotationX(
                                            math.pi,
                                          ),
                                          child: Text(
                                            "𝅮",
                                            maxLines: 1,
                                            overflow: TextOverflow.visible,
                                            style: noteStyle,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if (nota <= -3)
                  Align(
                    child: Transform.translate(
                      offset: Offset(0, -(pentagramaSize * .035) * -3),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: pentagramaSize * .1),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            height: pentagramaSize * .28,
                            width: pentagramaSize * .15,
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: pentagramaSize * .035,
                              ),
                              child: Guia(
                                isThemeWhite
                                    ? Colors.grey.shade800
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if (nota <= -5)
                  Align(
                    child: Transform.translate(
                      offset: Offset(0, -(pentagramaSize * .035) * -5),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: pentagramaSize * .1),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            height: pentagramaSize * .28,
                            width: pentagramaSize * .15,
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: pentagramaSize * .035,
                              ),
                              child: Guia(
                                isThemeWhite
                                    ? Colors.grey.shade800
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if (nota >= 9)
                  Align(
                    child: Transform.translate(
                      offset: Offset(0, -(pentagramaSize * .035) * 9),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: pentagramaSize * .1),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            height: pentagramaSize * .28,
                            width: pentagramaSize * .15,
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: pentagramaSize * .035,
                              ),
                              child: Guia(
                                isThemeWhite
                                    ? Colors.grey.shade800
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                if (nota >= 11)
                  Align(
                    child: Transform.translate(
                      offset: Offset(0, -(pentagramaSize * .035) * 11),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: pentagramaSize * .1),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            height: pentagramaSize * .28,
                            width: pentagramaSize * .15,
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: pentagramaSize * .035,
                              ),
                              child: Guia(
                                isThemeWhite
                                    ? Colors.grey.shade800
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CeldaSimbolo extends StatelessWidget {
  final double pentagramaSize;
  final String simbolo;
  const CeldaSimbolo({
    Key? key,
    required this.pentagramaSize,
    required this.simbolo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isThemeWhite = true;
    return Container(
      height: pentagramaSize * .7,
      alignment: Alignment.center,
      child: SizedBox(
        height: pentagramaSize * .5,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Text(
            simbolo,
            maxLines: 1,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class LineasPentagrama extends StatelessWidget {
  final double pentagramaSize;
  const LineasPentagrama({
    Key? key,
    required this.pentagramaSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isThemeWhite = true;
    return LayoutBuilder(
      builder: (context, constraints) {
        print(constraints);
        return Container(
          width: constraints.maxHeight,
          height: pentagramaSize * .7,
          alignment: Alignment.center,
          child: SizedBox(
            height: pentagramaSize * .5,
            child: Padding(
              padding: EdgeInsets.only(
                top: pentagramaSize * .1,
                bottom: pentagramaSize * .12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(5, (index) => null)
                      .map(
                        (e) => Guia(
                          isThemeWhite ? Colors.grey.shade800 : Colors.white,
                        ),
                      )
                      .toList()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
