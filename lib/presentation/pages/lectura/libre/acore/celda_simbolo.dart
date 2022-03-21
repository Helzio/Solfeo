import 'package:flutter/material.dart';

class CeldaSimbolo extends StatelessWidget {
  final Size pentagramaSize;
  final Simbolo simbolo;
  const CeldaSimbolo({
    Key? key,
    required this.pentagramaSize,
    required this.simbolo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: pentagramaSize.height,
      width: pentagramaSize.width / 33,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          getSimbolo(
            simbolo,
            halfSpaces: 0,
          ),
          overflow: TextOverflow.visible,
          textAlign: TextAlign.end,
          style: const TextStyle(
            fontFamily: "Bravura",
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

enum Simbolo {
  gClef,
  barlineSingle,
  barlineDouble,
  barlineFinal,
  barlineReverseFinal,
  repeatLeft,
  repeatRight,
  repeatRightLeft,
  repeatDots,
  noteWhole,
  noteHalfUp,
  noteHalfDown,
  noteQuarterUp,
  noteQuarterDown,
  note8thUp,
  note8thDown,
  note16thUp,
  note16thDown,
  note32ndUp,
  note32ndDown,
  note64thUp,
  note64thDown,
  note128thUp,
  note128thDown,
  note256thUp,
  note256thDown,
  note512thUp,
  note512thDown,
  note1024thUp,
  note1024thDown,
  augmentationDot,
  space,
}

enum Lineas {
  staff1Line,
  staff2Lines,
  staff3Lines,
  staff4Lines,
  staff5Lines,
  staff6Lines,
  staff1LineWide,
  staff2LinesWide,
  staff3LinesWide,
  staff4LinesWide,
  staff5LinesWide,
  staff6LinesWide,
  staff1LineNarrow,
  staff2LinesNarrow,
  staff3LinesNarrow,
  staff4LinesNarrow,
  staff5LinesNarrow,
  staff6LinesNarrow,
}

enum Posicion {
  c5,
  d5,
  e5,
  f5,
  g5,
  a5,
  b5,
  c6,
  a4,
  g4,
  f4,
  e4,
  d4,
  c4,
  b3,
  a3,
}

String getLines({Lineas lineas = Lineas.staff5LinesWide}) {
  final StringBuffer buffer = StringBuffer();

  switch (lineas) {
    case Lineas.staff1Line:
      buffer.write("\uE010");
      break;
    case Lineas.staff2Lines:
      buffer.write("\uE011");
      break;
    case Lineas.staff3Lines:
      buffer.write("\uE012");
      break;
    case Lineas.staff4Lines:
      buffer.write("\uE013");
      break;
    case Lineas.staff5Lines:
      buffer.write("\uE014");
      break;
    case Lineas.staff6Lines:
      buffer.write("\uE015");
      break;
    case Lineas.staff1LineWide:
      buffer.write("\uE016");
      break;
    case Lineas.staff2LinesWide:
      buffer.write("\uE017");
      break;
    case Lineas.staff3LinesWide:
      buffer.write("\uE018");
      break;
    case Lineas.staff4LinesWide:
      buffer.write("\uE019");
      break;
    case Lineas.staff5LinesWide:
      buffer.write("\uE01A");
      break;
    case Lineas.staff6LinesWide:
      buffer.write("\uE01B");
      break;
    case Lineas.staff1LineNarrow:
      buffer.write("\uE01C");
      break;
    case Lineas.staff2LinesNarrow:
      buffer.write("\uE01D");
      break;
    case Lineas.staff3LinesNarrow:
      buffer.write("\uE01E");
      break;
    case Lineas.staff4LinesNarrow:
      buffer.write("\uE01F");
      break;
    case Lineas.staff5LinesNarrow:
      buffer.write("\uE020");
      break;
    case Lineas.staff6LinesNarrow:
      buffer.write("\uE021");
      break;
  }

  return buffer.toString();
}

String getSpace(
  int halfSpaces, {
  bool withLines = true,
}) {
  final StringBuffer buffer = StringBuffer();

  for (int i = 0; i < halfSpaces; i++) {
    if (withLines) {
      buffer.write(getLines());
    }
    buffer.write(" ");
  }
  return buffer.toString();
}

String getPosition(Posicion posicion) {
  switch (posicion) {
    case Posicion.c5:
      return "\uEB90";

    case Posicion.d5:
      return "\uEB91";

    case Posicion.e5:
      return "\uEB92";

    case Posicion.f5:
      return "\uEB93";

    case Posicion.g5:
      return "\uEB94";

    case Posicion.a5:
      return "\uEB95";

    case Posicion.b5:
      return "\uEB96";

    case Posicion.c6:
      return "\uEB97";

    case Posicion.a4:
      return "\uEB98";

    case Posicion.g4:
      return "\uEB99";

    case Posicion.f4:
      return "\uEB9A";

    case Posicion.e4:
      return "\uEB9B";

    case Posicion.d4:
      return "\uEB9C";

    case Posicion.c4:
      return "\uEB9D";

    case Posicion.b3:
      return "\uEB9E";

    case Posicion.a3:
      return "\uEB9F";
  }
}

String getSimbolo(
  Simbolo simbolo, {
  bool withLines = true,
  Posicion posicion = Posicion.g4,
  int halfSpaces = 0,
}) {
  final StringBuffer buffer = StringBuffer();

  for (int i = 0; i < halfSpaces; i++) {
    buffer.write(getSpace(halfSpaces));
  }
  if (withLines) {
    buffer.write(getLines());
  }

  buffer.write(getPosition(posicion));

  switch (simbolo) {
    case Simbolo.gClef:
      buffer.write("\uE050");
      break;

    case Simbolo.barlineSingle:
      buffer.write("\uE030");
      break;
    case Simbolo.barlineDouble:
      buffer.write("\uE031");
      break;
    case Simbolo.barlineFinal:
      buffer.write("\uE032");
      break;
    case Simbolo.barlineReverseFinal:
      buffer.write("\uE033");
      break;
    case Simbolo.repeatLeft:
      buffer.write("\uE040");
      break;
    case Simbolo.repeatRight:
      buffer.write("\uE041");
      break;
    case Simbolo.repeatRightLeft:
      buffer.write("\uE042");
      break;
    case Simbolo.repeatDots:
      buffer.write("\uE043");
      break;
    case Simbolo.noteWhole:
      buffer.write("\uE1D2");
      break;
    case Simbolo.noteHalfUp:
      buffer.write("\uE1D3");
      break;
    case Simbolo.noteHalfDown:
      buffer.write("\uE1D4");
      break;
    case Simbolo.noteQuarterUp:
      buffer.write("\uE1D5");
      break;
    case Simbolo.noteQuarterDown:
      buffer.write("\uE1D6");
      break;
    case Simbolo.note8thUp:
      buffer.write("\uE1D7");
      break;
    case Simbolo.note8thDown:
      buffer.write("\uE1D8");
      break;
    case Simbolo.note16thUp:
      buffer.write("\uE1D9");
      break;
    case Simbolo.note16thDown:
      buffer.write("\uE1DA");
      break;
    case Simbolo.note32ndUp:
      buffer.write("\uE1DB");
      break;
    case Simbolo.note32ndDown:
      buffer.write("\uE1DC");
      break;
    case Simbolo.note64thUp:
      buffer.write("\uE1DD");
      break;
    case Simbolo.note64thDown:
      buffer.write("\uE1DE");
      break;
    case Simbolo.note128thUp:
      buffer.write("\uE1DF");
      break;
    case Simbolo.note128thDown:
      buffer.write("\uE1E0");
      break;
    case Simbolo.note256thUp:
      buffer.write("\uE1E1");
      break;
    case Simbolo.note256thDown:
      buffer.write("\uE1E2");
      break;
    case Simbolo.note512thUp:
      buffer.write("\uE1E3");
      break;
    case Simbolo.note512thDown:
      buffer.write("\uE1E4");
      break;
    case Simbolo.note1024thUp:
      buffer.write("\uE1E5");
      break;
    case Simbolo.note1024thDown:
      buffer.write("\uE1E6");
      break;
    case Simbolo.augmentationDot:
      buffer.write("\uE1E7");
      break;
    case Simbolo.space:
      buffer.write("-");
      break;
  }
  return buffer.toString();
}
