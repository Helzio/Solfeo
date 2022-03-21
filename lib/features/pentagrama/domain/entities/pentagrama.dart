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
  switch (nivel) {
    case 1:
      return [
        const Nota(
          tono: Tono.Do,
          ocatava: Ocatava.Cuarta,
          valor: Valor.Negra,
          silencio: false,
          puntillosRepeticion: null,
          casillaDeRepeticion: 0,
          puntillo: false,
          calderon: false,
        ),
        const Nota(
          tono: Tono.Sol,
          ocatava: Ocatava.Cuarta,
          valor: Valor.Negra,
          silencio: false,
          puntillosRepeticion: null,
          casillaDeRepeticion: 0,
          puntillo: false,
          calderon: false,
        ),
      ];
    default:
      return [];
  }
}

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
}

String getNotaPosicion({
  Clave clave = Clave.Sol,
  required Tono tono,
  Ocatava ocatava = Ocatava.Cuarta,
}) {
  switch (tono) {
    case Tono.Do:
      if (ocatava == Ocatava.Cuarta) {
        return "\u{EB9D}\u{E022}\u{EB9D}";
      } else {
        return "";
      }
    case Tono.Re:
      if (ocatava == Ocatava.Cuarta) {
        return "\uEB9C";
      } else {
        return "";
      }
    case Tono.Mi:
      if (ocatava == Ocatava.Cuarta) {
        return "\uEB9B";
      } else {
        return "";
      }
    case Tono.Fa:
      if (ocatava == Ocatava.Cuarta) {
        return "\uEB9A";
      } else {
        return "";
      }
    case Tono.Sol:
      if (ocatava == Ocatava.Cuarta) {
        return "\uEB99";
      } else {
        return "";
      }
    case Tono.La:
      if (ocatava == Ocatava.Cuarta) {
        return "\uEB98";
      } else {
        return "";
      }
    case Tono.Si:
      if (ocatava == Ocatava.Cuarta) {
        return "\uEB9D";
      } else {
        return "";
      }
  }
}

String getNoteString({
  required Valor valor,
  bool silencio = false,
  bool haciaAbajo = false,
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
        return "\u{E1D5}";
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
