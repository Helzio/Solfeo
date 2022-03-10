import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:solfeo/acore/ejercicios/ejercicios.dart';
import 'package:solfeo/features/partitura_scroll/application/partitura_scroll_notifier.dart';
import 'package:solfeo/features/partitura_scroll/providers/partitura_scroll_provider.dart';
import 'package:solfeo/presentation/pages/lectura/widgets/guia.dart';

class Pentagrama extends ConsumerStatefulWidget {
  final double height;
  const Pentagrama({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  ConsumerState<Pentagrama> createState() => _PentagramaState();
}

class _PentagramaState extends ConsumerState<Pentagrama> {
  final double pentagramaSize = 150;
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    ref.listen<PartituraScrollState>(partituraScrollProvider, (previous, next) {
      itemScrollController.scrollTo(
        index: next.currentNote ~/ 10,
        duration: const Duration(milliseconds: 250),
      );
    });
    final isStop = ref.watch(
      partituraScrollProvider.select((value) => value.currentNote == -5),
    );
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowIndicator();
        return false;
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              "Lectura en octavos - Ejercicio 16",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                "𝅘𝅥",
                maxLines: 1,
                overflow: TextOverflow.visible,
                style: GoogleFonts.notoMusic(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                " = 100",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: ScrollablePositionedList.builder(
              physics: isStop
                  ? const BouncingScrollPhysics()
                  : const NeverScrollableScrollPhysics(),
              itemCount: (ejercicio16.length / 10).ceil(),
              itemBuilder: (context, index) {
                final sublist = ejercicio16.sublist(index * 10);
                final sublist2 = sublist.sublist(
                  0,
                  sublist.length >= 10 ? 10 : null,
                );
                return PentagramaSuelto(
                  pentagramaSize: pentagramaSize,
                  listNotas: sublist2,
                  startIndex: index * 10,
                  endIndex: index * 10 + sublist2.length,
                );
              },
              itemScrollController: itemScrollController,
              itemPositionsListener: itemPositionsListener,
            ),
          ),
        ],
      ),
    );
  }
}

class PentagramaSuelto extends StatelessWidget {
  const PentagramaSuelto({
    Key? key,
    required this.pentagramaSize,
    required this.listNotas,
    required this.startIndex,
    required this.endIndex,
  }) : super(key: key);

  final double pentagramaSize;
  final List<String> listNotas;
  final int startIndex;
  final int endIndex;

  @override
  Widget build(BuildContext context) {
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
                child: Row(
                  children: [
                    ...listNotas
                        .mapIndexed(
                          (i, e) => CeldaNota(
                            pentagramaSize: pentagramaSize,
                            nota: notasMap[e]!,
                            index: startIndex + i,
                          ),
                        )
                        .toList(),
                  ],
                ),
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
    final match = ref.watch(
      partituraScrollProvider.select(
        (value) => value.currentNote == index,
      ),
    );
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
                                  style: GoogleFonts.notoMusic(
                                    color: Colors.white,
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
                                        style: GoogleFonts.notoMusic(
                                          color: Colors.white,
                                        ),
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
                                            style: GoogleFonts.notoMusic(
                                              color: Colors.white,
                                            ),
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
                              child: const Guia(),
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
                              child: const Guia(),
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
                              child: const Guia(),
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
                              child: const Guia(),
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
              color: Colors.white,
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
                    (e) => const Guia(),
                  )
                  .toList()
            ],
          ),
        ),
      ),
    );
  }
}
