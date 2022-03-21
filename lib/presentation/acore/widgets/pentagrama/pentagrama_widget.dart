import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:solfeo/features/pentagrama/domain/entities/pentagrama.dart';

const double pentagramaRatio = .55;

class PentagramaWidget extends ConsumerStatefulWidget {
  final Size size;
  final Pentagrama pentagrama;
  const PentagramaWidget({
    Key? key,
    required this.size,
    required this.pentagrama,
  }) : super(key: key);

  @override
  ConsumerState<PentagramaWidget> createState() => _PentagramaWidgetState();
}

class _PentagramaWidgetState extends ConsumerState<PentagramaWidget> {
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
    final pentagramas = (notas.length / notasDisponibles).ceil();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ...List.generate(
          pentagramas,
          (pentagramaIndex) => Container(
            color: Colors.purple.withOpacity(.01),
            height: altura / 3,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  children: [
                    ...List.generate(
                      notasDisponibles >=
                              notas.length - notasDisponibles * pentagramaIndex
                          ? (notas.length -
                                      notasDisponibles * pentagramaIndex) *
                                  3 +
                              pentagramaUnidadesOcupadas
                          : unidades,
                      (i) => PentagramaLineas(
                        textSize: textSize,
                        index: i,
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
                          notasDisponibles,
                          (index) =>
                              index + (pentagramaIndex * notasDisponibles) <
                                      notas.length
                                  ? PentagramaNota(
                                      textSize: textSize,
                                      nota: notas[index +
                                          (pentagramaIndex * notasDisponibles)],
                                    )
                                  : Container(),
                        ),
                      ],
                    ),
                    PentagramaDobleBarraFinal(
                      textSize: textSize,
                      visible: pentagramaIndex == pentagramas - 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
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
  final int index;
  const PentagramaLineas({
    Key? key,
    required this.textSize,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unidad = textSize * pentagramaRatio * .8 / 4;
    return Container(
      color: Colors.primaries[index % Colors.primaries.length].withOpacity(.0),
      width: unidad,
      height: textSize * pentagramaRatio,
      child: Text(
        "\u{E020}-",
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

class PentagramaNota extends StatelessWidget {
  final double textSize;
  final Nota nota;
  const PentagramaNota({
    Key? key,
    required this.textSize,
    required this.nota,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final unidad = textSize * pentagramaRatio * .8 / 4;
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0),
        borderRadius: BorderRadius.circular(unidad / 3),
      ),
      width: unidad * 3,
      height: textSize,
      child: Center(
        child: SizedBox(
          height: textSize * pentagramaRatio,
          width: unidad * 3,
          child: Padding(
            padding: EdgeInsets.only(left: unidad),
            child: Text(
              "${getNotaPosicion(tono: nota.tono)}${getNoteString(valor: nota.valor)}",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: textSize * pentagramaRatio,
                overflow: TextOverflow.visible,
                color: Colors.black,
                fontFamily: "BravuraText",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
