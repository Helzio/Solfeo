import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pentagrama extends StatefulWidget {
  final double height;
  const Pentagrama({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  State<Pentagrama> createState() => _PentagramaState();
}

class _PentagramaState extends State<Pentagrama> {
  final double fontSize = 60;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: fontSize,
        child: Stack(
          children: [
            LineasPentagrama(
              fontSize: fontSize,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 16,
                ),
                Text(
                  "! 0 1 2 3 4 5 6 7 8 9 ",
                  maxLines: 2,
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    fontFamily: 'Music',
                    fontSize: fontSize,
                  ),
                  textAlign: TextAlign.center,
                ),

                /* CeldaNota(
                  fontSize: fontSize,
                  nota: -2,
                ),
                CeldaNota(
                  fontSize: fontSize,
                  nota: -1,
                ),
                CeldaNota(
                  fontSize: fontSize,
                  nota: 0,
                ),
                CeldaNota(
                  fontSize: fontSize,
                  nota: 1,
                ),
                CeldaNota(
                  fontSize: fontSize,
                  nota: 2,
                ),
                CeldaNota(
                  fontSize: fontSize,
                  nota: 3,
                ),
                CeldaNota(
                  fontSize: fontSize,
                  nota: 4,
                ),
                CeldaNota(
                  fontSize: fontSize,
                  nota: 5,
                ), */
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CeldaNota extends StatelessWidget {
  final double fontSize;
  final int nota;
  const CeldaNota({
    Key? key,
    required this.fontSize,
    required this.nota,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, fontSize),
      child: SizedBox(
        width: fontSize / 2,
        child: ClipRect(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  child: Text(
                    "𝄚",
                    overflow: TextOverflow.visible,
                    style: GoogleFonts.notoMusic(
                      fontSize: fontSize,
                      height: 1,
                      color: Colors.red,
                      letterSpacing: -4,
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "𝅘",
                  overflow: TextOverflow.visible,
                  style: GoogleFonts.notoMusic(
                    fontSize: fontSize,
                    height: 1,
                  ),
                ),
              ),
              /* Text(
                "𝅥",
                style: GoogleFonts.notoMusic(
                  fontSize: fontSize,
                  height: 1.5,
                  color: Colors.white,
                ),
              ), */
            ],
          ),
        ),
      ),
    );
  }
}

class ClaveSol extends StatelessWidget {
  final double fontSize;
  const ClaveSol({
    Key? key,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        " !",
        maxLines: 2,
        overflow: TextOverflow.visible,
        style: TextStyle(
          fontFamily: 'Music',
          fontSize: fontSize,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class LineasPentagrama extends StatelessWidget {
  final double fontSize;
  const LineasPentagrama({
    Key? key,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "--------------------------------------------------------------------------",
        maxLines: 2,
        overflow: TextOverflow.visible,
        style: TextStyle(
          fontFamily: 'Music',
          fontSize: fontSize,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
