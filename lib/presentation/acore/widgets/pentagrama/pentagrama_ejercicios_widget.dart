import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:solfeo/features/lectura_ejercicio/providers/lectura_ejercicio_providers.dart';
import 'package:solfeo/features/pentagrama/domain/entities/pentagrama.dart';
import 'package:solfeo/presentation/acore/widgets/guias/diagonal_mas_menos.dart';
import 'package:solfeo/presentation/acore/widgets/guias/diagonal_menos_mas.dart';

const double pentagramaRatio = kIsWeb ? .6 : .40;

class PentagramaEjerciciosWidget extends ConsumerStatefulWidget {
  final Size size;
  final Pentagrama pentagrama;
  const PentagramaEjerciciosWidget({
    Key? key,
    required this.size,
    required this.pentagrama,
  }) : super(key: key);

  @override
  ConsumerState<PentagramaEjerciciosWidget> createState() =>
      _PentagramaEjerciciosWidgetState();
}

class _PentagramaEjerciciosWidgetState
    extends ConsumerState<PentagramaEjerciciosWidget> {
  static const int pentagramaUnidadesOcupadas = 7;
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    final altura = widget.size.height;
    final altuaPentagrama = widget.size.height / 3;
    final unidad = altuaPentagrama * .8 * pentagramaRatio / 4;
    final unidades = widget.size.width ~/ unidad;
    final unidadesDisponibles = unidades - pentagramaUnidadesOcupadas;
    final notasDisponibles = unidadesDisponibles ~/ 3;
    final textSize = altura / 3;
    final notas = widget.pentagrama.notas;
    final compases = widget.pentagrama.compases;

    int numeroPentagramas = 0;
    int numeroNotas = 0;
    int totalIndex = 0;
    final List<List<Map<Compas, int>>> pentagramasSueltos = [];
    pentagramasSueltos.add([]);
    for (final compas in compases) {
      if (numeroNotas + compas.notas.length <= notasDisponibles) {
        pentagramasSueltos[numeroPentagramas].add({compas: numeroNotas});
        numeroNotas += compas.notas.length;
        totalIndex += compas.notas.length;
      } else {
        pentagramasSueltos.add([]);
        numeroPentagramas++;
        pentagramasSueltos[numeroPentagramas].add({compas: totalIndex});
        totalIndex += compas.notas.length;
        numeroNotas = compas.notas.length;
      }
    }

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...List.generate(
            pentagramasSueltos.length,
            (pentagramaIndex) => SizedBox(
              height: altura / 3,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    children: [
                      ...List.generate(
                        notasDisponibles >=
                                notas.length -
                                    notasDisponibles * pentagramaIndex
                            ? (notas.length -
                                        notasDisponibles * pentagramaIndex) *
                                    3 +
                                pentagramaUnidadesOcupadas
                            : unidades,
                        (i) => PentagramaLineas(
                          textSize: textSize,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      PentagramaClave(
                        clave: widget.pentagrama.clave,
                        textSize: textSize,
                      ),
                      Row(
                        children: [
                          ...List.generate(
                            pentagramasSueltos[pentagramaIndex].length,
                            (index) {
                              return PentagramaCompas(
                                textSize: textSize,
                                compas: pentagramasSueltos[pentagramaIndex]
                                        [index]
                                    .keys
                                    .first,
                                index: pentagramasSueltos[pentagramaIndex]
                                        [index]
                                    .values
                                    .first,
                              );
                            },
                          ),
                        ],
                      ),
                      PentagramaDobleBarraFinal(
                        textSize: textSize,
                        visible:
                            pentagramaIndex == pentagramasSueltos.length - 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PentagramaClave extends StatelessWidget {
  final Clave clave;
  final double textSize;
  const PentagramaClave({
    Key? key,
    required this.clave,
    required this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unidad = textSize * pentagramaRatio * .8 / 4;
    return SizedBox(
      width: unidad * 5,
      height: textSize * pentagramaRatio,
      child: Text(
        "\u{E050}",
        style: TextStyle(
          fontSize: textSize * pentagramaRatio,
          overflow: TextOverflow.visible,
          color: Colors.black,
          fontFamily: "BravuraText",
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  String getClaveText(Clave clave) {
    if (clave == Clave.Sol) {
      return "\u{E050}";
    } else {
      return "";
    }
  }
}

class PentagramaLineas extends StatelessWidget {
  final double textSize;
  const PentagramaLineas({
    Key? key,
    required this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unidad = textSize * pentagramaRatio * .8 / 4;
    return SizedBox(
      width: unidad,
      height: textSize * pentagramaRatio,
      child: Text(
        "\u{E020}-",
        style: TextStyle(
          fontSize: textSize * pentagramaRatio,
          overflow: TextOverflow.visible,
          color: Colors.black.withOpacity(.4),
          fontFamily: "BravuraText",
        ),
      ),
    );
  }
}

class PentagramaDobleBarraFinal extends StatelessWidget {
  final double textSize;
  final bool visible;
  const PentagramaDobleBarraFinal({
    Key? key,
    required this.textSize,
    this.visible = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unidad = textSize * pentagramaRatio * .8 / 4;
    return SizedBox(
      width: unidad * 2,
      height: textSize * pentagramaRatio,
      child: Padding(
        padding: EdgeInsets.only(left: unidad * 1.1),
        child: Text(
          "\u{E032}",
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: textSize * pentagramaRatio,
            overflow: TextOverflow.visible,
            color: visible ? Colors.black : Colors.transparent,
            fontFamily: "BravuraText",
          ),
        ),
      ),
    );
  }
}

class PentagramaLineaDivisoria extends StatelessWidget {
  final double textSize;
  const PentagramaLineaDivisoria({
    Key? key,
    required this.textSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0,
      height: textSize * pentagramaRatio,
      child: Text(
        "\u{E030}",
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: textSize * pentagramaRatio,
          overflow: TextOverflow.visible,
          color: Colors.black,
          fontFamily: "BravuraText",
        ),
      ),
    );
  }
}

class PentagramaNota extends ConsumerWidget {
  final double textSize;
  final Nota nota;
  final int index;
  const PentagramaNota({
    Key? key,
    required this.textSize,
    required this.nota,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final stateIndex =
        ref.watch(lecturaEjercicioProvider.select((value) => value.index));
    final listErrorIndex = ref.watch(
      lecturaEjercicioProvider.select((value) => value.listErrorIndex),
    );
    final greenNotes =
        ref.watch(lecturaEjercicioProvider.select((value) => value.greenNotes));
    final greenNote = greenNotes.contains(nota);

    final unidad = textSize * pentagramaRatio * .8 / 4;
    return Container(
      decoration: BoxDecoration(
        color: stateIndex == index
            ? Colors.black.withOpacity(.13)
            : Colors.black.withOpacity(0),
        borderRadius: BorderRadius.circular(unidad / 3),
      ),
      width: unidad * 3,
      height: textSize,
      child: Center(
        child: SizedBox(
          height: textSize * pentagramaRatio,
          width: unidad * getNoteSize(valor: nota.valor),
          child: Transform.translate(
            offset: nota.tono == Tono.Re && nota.ocatava == Ocatava.Sexta
                ? Offset(0, -unidad)
                : Offset.zero,
            child: Text(
              getNotaPosicion(
                tono: nota.tono,
                octava: nota.ocatava,
                valor: nota.valor,
              ),
              style: TextStyle(
                fontSize: textSize * pentagramaRatio,
                overflow: TextOverflow.visible,
                color: listErrorIndex.contains(index)
                    ? Colors.red
                    : greenNote
                        ? Colors.green
                        : Colors.black,
                fontFamily: "BravuraText",
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PentagramaCompas extends ConsumerWidget {
  final double textSize;
  final Compas compas;
  final int index;
  final bool visibleLine;
  const PentagramaCompas({
    Key? key,
    required this.textSize,
    required this.compas,
    required this.index,
    this.visibleLine = false,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final unidad = textSize * pentagramaRatio * .8 / 4;
    final stateIndex =
        ref.watch(lecturaEjercicioProvider.select((value) => value.index));
    final listErrorIndex = ref.watch(
      lecturaEjercicioProvider.select(
        (value) => value.listErrorIndex,
      ),
    );

    int tonoInicial = 0;
    int tonoFinal = 0;
    final notasWidgets = <Widget>[];

    int notaIndex = 0;
    for (final nota in compas.notas) {
      bool agrupacionInicial = false;
      bool agrupacionFinal = false;
      if (notaIndex != compas.notas.length - 1 &&
          nota.valor == Valor.Corchea &&
          compas.notas[notaIndex + 1].valor == Valor.Corchea) {
        agrupacionInicial = true;
        tonoInicial = getTono(nota.tono, nota.ocatava);

        int tonoFinalIndex = 0;
        for (final notaFinal in compas.notas) {
          if (tonoFinalIndex == 0) {
            tonoFinalIndex++;
            continue;
          }

          if (notaFinal.valor == Valor.Corchea) {
            if (tonoFinalIndex != compas.notas.length - 1) {
              tonoFinalIndex++;
            } else {
              break;
            }
          } else {
            break;
          }
        }
        tonoFinal = getTono(
          compas.notas[tonoFinalIndex].tono,
          compas.notas[tonoFinalIndex].ocatava,
        );
      } else if (notaIndex != 0) {
        if (nota.valor == Valor.Corchea &&
            compas.notas[notaIndex - 1].valor == Valor.Corchea) {
          agrupacionFinal = true;
        }
      }
      final agrupacion = agrupacionInicial || agrupacionFinal;
      notasWidgets.add(
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                color: stateIndex == index + notaIndex
                    ? Colors.black.withOpacity(.13)
                    : Colors.black.withOpacity(0),
                borderRadius: BorderRadius.circular(unidad / 3),
              ),
              width: unidad * 3,
              height: textSize,
              child: Center(
                child: SizedBox(
                  height: textSize * pentagramaRatio,
                  width: unidad * getNoteSize(valor: Valor.Redonda),
                  child: Transform.translate(
                    offset:
                        nota.tono == Tono.Re && nota.ocatava == Ocatava.Sexta
                            ? Offset(0, -unidad)
                            : Offset.zero,
                    child: Text(
                      getNotaPosicion(
                        tono: nota.tono,
                        octava: nota.ocatava,
                        valor: agrupacion ? Valor.Negra : nota.valor,
                        agrupacionDown:
                            agrupacion && (tonoInicial >= 4 || tonoFinal >= 4),
                      ),
                      style: TextStyle(
                        fontSize: textSize * pentagramaRatio,
                        overflow: TextOverflow.visible,
                        color: listErrorIndex.contains(index + notaIndex)
                            ? Colors.red
                            : Colors.black,
                        fontFamily: "BravuraText",
                      ),
                    ),
                  ),
                ),
              ),
            ),
            if (agrupacionInicial && !(tonoInicial >= 4 || tonoFinal >= 4))
              SizedBox(
                height: unidad * ((tonoFinal - tonoInicial).abs() * .5),
                width: unidad * 3,
                child: Transform.translate(
                  offset: Offset(
                    (3 * unidad) - (unidad * 1.328 / 3 * 2),
                    (-tonoInicial - 17) * (unidad * .5) - (unidad * .1),
                  ),
                  child: tonoInicial < tonoFinal
                      ? const DiagonalMenosMas(
                          Colors.black,
                        )
                      : const DiagonalMasMenos(
                          Colors.black,
                        ),
                ),
              ),
            if (agrupacionInicial &&
                (tonoInicial >= 4 || tonoFinal >= 4) &&
                tonoInicial > tonoFinal)
              SizedBox(
                height: unidad * ((tonoFinal - tonoInicial).abs() * .5),
                width: unidad * 3,
                child: Transform.translate(
                  offset: Offset(
                    (3 * unidad) - (unidad * 1.328 / 3 * 4.7),
                    (-tonoInicial - 1) * (unidad * .5) -
                        (unidad * .4) -
                        (tonoInicial - tonoFinal == 1 ? (unidad * .4) : 0) -
                        ((nota.tono == Tono.Re && nota.ocatava == Ocatava.Sexta)
                            ? -(unidad * .55)
                            : 0),
                  ),
                  child: const DiagonalMasMenos(
                    Colors.black,
                  ),
                ),
              ),
            if (agrupacionInicial &&
                (tonoInicial >= 4 || tonoFinal >= 4) &&
                tonoInicial < tonoFinal)
              SizedBox(
                height: unidad * ((tonoFinal - tonoInicial).abs() * .5),
                width: unidad * 3,
                child: Transform.translate(
                  offset: Offset(
                    (3 * unidad) - (unidad * 1.328 / 3 * 4.7),
                    (-tonoInicial - 3) * (unidad * .5) - (unidad * .4),
                  ),
                  child: const DiagonalMenosMas(
                    Colors.black,
                  ),
                ),
              ),
          ],
        ),
      );
      notaIndex++;
    }
    return Row(
      children: [...notasWidgets],
    );
  }
}
