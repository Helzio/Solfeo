// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'pentagrama.freezed.dart';

enum Clave {
  Sol,
  Fa,
  Do,
}

enum Tono {
  Do,
  Re,
  Mi,
  Fa,
  Sol,
  La,
  Si,
}

enum Armadura {
  Do,
  Re,
  Mi,
  Fa,
  Sol,
  La,
  Si,
}

enum Valor {
  Redonda,
  Blanca,
  Negra,
  Corchea,
  SemiCorchea,
}

enum Ocatava {
  Primera,
  Segunda,
  Tercera,
  Cuarta,
  Quinta,
  Sexta,
  Septima,
  Octava
}

enum Alteracion {
  Sostenido,
  Bemol,
  Becuadro,
}

enum PuntillosRepeticion {
  Inicio,
  Fin,
}

enum Ligadura {
  Inicio,
  Fin,
}

@freezed
class Pentagrama with _$Pentagrama {
  const Pentagrama._();
  const factory Pentagrama({
    required Clave clave,
    required int numerador,
    required int denominador,
    required List<Compas> compases,
    required Armadura armadura,
    required bool Anacruza,
    required int tempo,
  }) = _Pentagrama;

  factory Pentagrama.lecturaLibre({required int nivel}) {
    return Pentagrama(
      clave: Clave.Sol,
      numerador: 1,
      denominador: 2,
      compases: generarCompasesLecturaLibre(nivel: nivel),
      armadura: Armadura.Do,
      Anacruza: false,
      tempo: 50,
    );
  }

  factory Pentagrama.lecturaEjercicio({required int nivel}) {
    return Pentagrama(
      clave: Clave.Sol,
      numerador: 1,
      denominador: 2,
      compases: generarCompasesLecturaEjercicio(nivel: nivel),
      armadura: Armadura.Do,
      Anacruza: false,
      tempo: 50,
    );
  }

  int get numeroNotas {
    int x = 0;
    for (final compas in compases) {
      x += compas.notas.length;
    }
    return x;
  }

  List<Nota> get notas {
    final List<Nota> notas = [];
    for (final compas in compases) {
      notas.addAll(compas.notas);
    }
    return notas;
  }
}

List<Nota> getNotasDisponibles({required int nivel}) {
  final notas = <Nota>[];
  if (nivel >= 1) {
    notas.insert(
      0,
      Nota.nivel(Tono.Do, Ocatava.Cuarta),
    );
    notas.insert(
      0,
      Nota.nivel(Tono.Sol, Ocatava.Cuarta),
    );
  }
  if (nivel >= 2) {
    notas.insert(
      0,
      Nota.nivel(Tono.Do, Ocatava.Quinta),
    );
    notas.insert(
      0,
      Nota.nivel(Tono.Sol, Ocatava.Quinta),
    );
  }
  if (nivel >= 3) {
    notas.insert(
      0,
      Nota.nivel(Tono.La, Ocatava.Cuarta),
    );
    notas.insert(
      0,
      Nota.nivel(Tono.Re, Ocatava.Quinta),
    );
  }
  if (nivel >= 4) {
    notas.insert(
      0,
      Nota.nivel(Tono.Fa, Ocatava.Cuarta),
    );
    notas.insert(
      0,
      Nota.nivel(Tono.Si, Ocatava.Cuarta),
    );
  }
  if (nivel >= 5) {
    notas.insert(
      0,
      Nota.nivel(Tono.Fa, Ocatava.Quinta),
    );
    notas.insert(
      0,
      Nota.nivel(Tono.Re, Ocatava.Cuarta),
    );
  }
  if (nivel >= 6) {
    notas.insert(
      0,
      Nota.nivel(Tono.La, Ocatava.Quinta),
    );
    notas.insert(
      0,
      Nota.nivel(Tono.Si, Ocatava.Tercera),
    );
  }
  if (nivel >= 7) {
    notas.insert(
      0,
      Nota.nivel(Tono.Mi, Ocatava.Cuarta),
    );
    notas.insert(
      0,
      Nota.nivel(Tono.Mi, Ocatava.Quinta),
    );
  }
  if (nivel >= 8) {
    notas.insert(
      0,
      Nota.nivel(Tono.Si, Ocatava.Quinta),
    );
    notas.insert(
      0,
      Nota.nivel(Tono.La, Ocatava.Tercera),
    );
  }
  if (nivel >= 9) {
    notas.insert(
      0,
      Nota.nivel(Tono.Do, Ocatava.Sexta),
    );
    notas.insert(
      0,
      Nota.nivel(Tono.Re, Ocatava.Sexta),
    );
  }

  return notas;
}

const up1 = "\u{EB90}";
const up2 = "\u{EB91}";
const up3 = "\u{EB92}";
const up4 = "\u{EB93}";
const up5 = "\u{EB94}";
const up6 = "\u{EB95}";
const up7 = "\u{EB96}";
const up8 = "\u{EB97}";
const down1 = "\u{EB98}";
const down2 = "\u{EB99}";
const down3 = "\u{EB9A}";
const down4 = "\u{EB9B}";
const down5 = "\u{EB9C}";
const down6 = "\u{EB9D}";
const down7 = "\u{EB9E}";
const down8 = "\u{EB9F}";
const barra = "\u{E022}";

List<Compas> generarCompasesLecturaLibre({required int nivel}) {
  final List<Compas> compases = [];
  List<Nota> notasDisponibles = getNotasDisponibles(nivel: nivel)..shuffle();
  for (int i = 0; i < 28; i++) {
    if (notasDisponibles.isEmpty) {
      notasDisponibles = getNotasDisponibles(nivel: nivel)..shuffle();
    }

    final nota = notasDisponibles[0];
    compases.add(
      Compas(
        numerador: 1,
        denominador: 1,
        notas: [
          nota,
        ],
      ),
    );
    notasDisponibles.removeAt(0);
  }
  return compases;
}

List<Compas> generarCompasesLecturaEjercicio({required int nivel}) {
  final List<Compas> compases = [];
  compases.add(
      Compas(
        numerador: 1,
        denominador: 1,
        notas: [
          Nota.corchea(Tono.Sol, Ocatava.Cuarta),
          Nota.corchea(Tono.Do, Ocatava.Quinta),
        ],
      ),
    );
  return compases;
}

@freezed
class Compas with _$Compas {
  const Compas._();
  const factory Compas({
    required int numerador,
    required int denominador,
    required List<Nota> notas,
  }) = _Compas;
}

@freezed
class Acorde with _$Acorde {
  const Acorde._();
  const factory Acorde({
    required List<Nota> notas,
  }) = _Acorde;
}

@freezed
class Nota with _$Nota {
  const Nota._();
  const factory Nota({
    required Tono tono,
    required Ocatava ocatava,
    required Valor valor,
    required bool silencio,
    required PuntillosRepeticion? puntillosRepeticion,
    required int casillaDeRepeticion,
    required bool puntillo,
    required bool calderon,
  }) = _Nota;

  factory Nota.initial(Tono tono) => Nota(
        tono: tono,
        ocatava: Ocatava.Cuarta,
        valor: Valor.Negra,
        silencio: false,
        puntillosRepeticion: null,
        casillaDeRepeticion: 0,
        puntillo: false,
        calderon: false,
      );

  factory Nota.nivel(
    Tono tono,
    Ocatava ocatava,
  ) =>
      Nota(
        tono: tono,
        ocatava: ocatava,
        valor: Valor.Negra,
        silencio: false,
        puntillosRepeticion: null,
        casillaDeRepeticion: 0,
        puntillo: false,
        calderon: false,
      );

  factory Nota.corchea(
    Tono tono,
    Ocatava ocatava,
  ) =>
      Nota(
        tono: tono,
        ocatava: ocatava,
        valor: Valor.Corchea,
        silencio: false,
        puntillosRepeticion: null,
        casillaDeRepeticion: 0,
        puntillo: false,
        calderon: false,
      );
}

String getNotaPosicion({
  Clave clave = Clave.Sol,
  required Tono tono,
  Ocatava octava = Ocatava.Cuarta,
  Valor valor = Valor.Negra,
}) {
  switch (tono) {
    case Tono.Do:
      if (octava == Ocatava.Cuarta) {
        return "$down6$barra$down6${getNoteString(valor: valor)}";
      } else if (octava == Ocatava.Quinta) {
        return up1 + getNoteString(valor: valor);
      } else if (octava == Ocatava.Sexta) {
        return "$up6$barra$up8$barra$up8${getNoteString(
          valor: valor,
          down: true,
        )}";
      } else {
        return getNoteString(valor: valor);
      }
    case Tono.Re:
      if (octava == Ocatava.Cuarta) {
        return "$down5${getNoteString(valor: valor)}";
      } else if (octava == Ocatava.Quinta) {
        return "$up2${getNoteString(
          valor: valor,
          down: true,
        )}";
      } else if (octava == Ocatava.Sexta) {
        return "$up4$barra$up6$barra$up7${getNoteString(
          valor: valor,
          down: true,
        )}";
      } else {
        return getNoteString(valor: valor);
      }
    case Tono.Mi:
      if (octava == Ocatava.Cuarta) {
        return "$down4${getNoteString(valor: valor)}";
      } else if (octava == Ocatava.Quinta) {
        return "$up3${getNoteString(valor: valor)}";
      } else {
        return getNoteString(valor: valor);
      }
    case Tono.Fa:
      if (octava == Ocatava.Cuarta) {
        return "$down3${getNoteString(valor: valor)}";
      } else if (octava == Ocatava.Quinta) {
        return "$up4${getNoteString(
          valor: valor,
          down: true,
        )}";
      } else {
        return getNoteString(valor: valor);
      }
    case Tono.Sol:
      if (octava == Ocatava.Cuarta) {
        return "\uEB99${getNoteString(valor: valor)}";
      } else if (octava == Ocatava.Quinta) {
        return up5 +
            getNoteString(
              valor: valor,
              down: true,
            );
      } else {
        return getNoteString(valor: valor);
      }
    case Tono.La:
      if (octava == Ocatava.Cuarta) {
        return "\uEB98${getNoteString(valor: valor)}";
      } else if (octava == Ocatava.Quinta) {
        return "$up6$barra$up6${getNoteString(
          valor: valor,
          down: true,
        )}";
      } else if (octava == Ocatava.Tercera) {
        return "$down6$barra$down8$barra$down8${getNoteString(valor: valor)}";
      } else {
        return getNoteString(valor: valor);
      }
    case Tono.Si:
      if (octava == Ocatava.Cuarta) {
        return getNoteString(valor: valor);
      } else if (octava == Ocatava.Tercera) {
        return "$down6$barra$down7${getNoteString(valor: valor)}";
      } else if (octava == Ocatava.Quinta) {
        return "$up6$barra$up7${getNoteString(
          valor: valor,
          down: true,
        )}";
      } else {
        return getNoteString(valor: valor);
      }
  }
}

double getNoteSize({
  required Valor valor,
}) {
  switch (valor) {
    case Valor.Redonda:
      return 1.328;
    case Valor.Blanca:
      return 1.328;
    case Valor.Negra:
      return 1.328;
    case Valor.Corchea:
      return 1.328;
    case Valor.SemiCorchea:
      return 1.328;
  }
}

const negraUp = "\u{E1D5}";
const negraDown = "\u{E1D6}";

String getNoteString({
  required Valor valor,
  bool silencio = false,
  bool down = false,
}) {
  switch (valor) {
    case Valor.Redonda:
      if (!silencio) {
        return "\u{E1D2}";
      } else {
        return "\u{E4E3}";
      }
    case Valor.Blanca:
      if (!silencio) {
        return "\u{E1D3}";
      } else {
        return "\u{E4E4}";
      }
    case Valor.Negra:
      if (!silencio) {
        return down ? negraDown : negraUp;
      } else {
        return "\u{E4E5}";
      }
    case Valor.Corchea:
      if (!silencio) {
        return "\u{E1D7}";
      } else {
        return "\u{E4E6}";
      }
    case Valor.SemiCorchea:
      if (!silencio) {
        return "\u{E1D9}";
      } else {
        return "\u{E4E7}";
      }
  }
}
