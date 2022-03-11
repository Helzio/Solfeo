import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solfeo/acore/ejercicios/ejercicios.dart';
import 'package:solfeo/features/lectura_libre/providers/lectura_libre_provider.dart';
import 'package:solfeo/presentation/pages/lectura/acore/widgets/guia.dart';

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

    return Scaffold(
      backgroundColor: Colors.white24,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(lecturaLibreProvider.notifier).generateNotes();
        },
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.refresh,
          color: Colors.white,
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
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
      ),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Stack(
        alignment: Alignment.center,
        children: [
          LineasPentagrama(pentagramaSize: pentagramaSize),
          Row(
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
              Expanded(
                child: notas.isEmpty
                    ? Container()
                    : Row(
                        children: [
                          ...List.generate(
                            10,
                            (index) => CeldaNota(
                              pentagramaSize: pentagramaSize,
                              nota: notasMap[notas[startIndex + index]] ?? -33,
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
                            style: GoogleFonts.notoMusic(
                              color: Colors.transparent,
                            ),
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

    final noteStyle = GoogleFonts.notoMusic(
      color: error
          ? Colors.red
          : isThemeWhite
              ? Colors.grey.shade800.withOpacity(passed ? .6 : 1)
              : Colors.white.withOpacity(passed ? .6 : 1),
    );

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
            style: GoogleFonts.notoMusic(
              color: isThemeWhite ? Colors.grey.shade800 : Colors.white,
            ),
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
    return Container(
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
  }
}
