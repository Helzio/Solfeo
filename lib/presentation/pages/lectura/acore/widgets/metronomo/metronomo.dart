import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:solfeo/features/partitura_scroll/providers/partitura_scroll_provider.dart';
import 'package:solfeo/presentation/pages/lectura/acore/widgets/metronomo/aguja.dart';
import 'package:soundpool/soundpool.dart';

class Metronomo extends ConsumerStatefulWidget {
  const Metronomo({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MetronomoState();
}

class _MetronomoState extends ConsumerState<Metronomo> {
  late Timer _timer;
  int ticks = -1;
  bool isRunning = false;
  final Soundpool _soundpool = Soundpool.fromOptions();
  int sound1 = -1;
  int sound2 = -1;
  static const duration = 600;

  @override
  void initState() {
    super.initState();
    _loadSounds();
  }

  Future<void> _loadSounds() async {
    final asset = await rootBundle.load("assets/sounds/sound1.wav");
    final asset2 = await rootBundle.load("assets/sounds/sound2.wav");
    sound1 = await _soundpool.load(asset);
    sound2 = await _soundpool.load(asset2);
  }

  Future<void> setTime(Timer timer) async {
    if (ticks % 4 == 0) {
      if (sound1 != -1) {
        _soundpool.play(sound1);
      }
    } else {
      if (sound2 != -1) {
        _soundpool.play(sound2);
      }
    }
    ref.read(partituraScrollProvider.notifier).addCurrentNote();
    setState(() {
      ticks++;
    });

    final currentNote = ref.read(partituraScrollProvider).currentNote;
    final max = ref.read(partituraScrollProvider).notas.length - 1;

    if (currentNote == max) {
      setState(() {
        isRunning = false;
        _timer.cancel();
        ticks = -1;
      });
      await Future.delayed(const Duration(milliseconds: duration));
      ref.read(partituraScrollProvider.notifier).reset();
      return;
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: InkResponse(
          radius: 110,
          splashColor: Colors.white,
          onTap: () {
            if (isRunning) {
              setState(() {
                isRunning = false;
                _timer.cancel();
                ticks = -1;
              });
            } else {
              isRunning = true;
              setState(() {
                ticks++;
              });
              _timer = Timer.periodic(
                const Duration(milliseconds: duration),
                setTime,
              );
            }
          },
          child: SizedBox(
            width: 110,
            height: 110,
            child: Column(
              children: [
                Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/metronomo4.png",
                        color: Colors.white,
                        height: 80,
                      ),
                    ),
                    Center(
                      child: Transform.translate(
                        offset: const Offset(
                          0,
                          20,
                        ),
                        child: SizedBox(
                          width: 90,
                          height: 90,
                          child: AnimatedRotation(
                            turns: !isRunning
                                ? 0
                                : ticks.isEven
                                    ? -.175
                                    : .175,
                            duration: !isRunning
                                ? const Duration(milliseconds: 200)
                                : const Duration(milliseconds: duration),
                            child: CustomPaint(
                              painter: AgujaPainter(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: ticks % 4 == 1 && isRunning
                                ? Colors.yellow
                                : Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: ticks % 4 == 2 && isRunning
                                ? Colors.yellow
                                : Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: ticks % 4 == 3 && isRunning
                                ? Colors.yellow
                                : Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: ticks % 4 == 0 && isRunning && ticks > 0
                                ? Colors.yellow
                                : Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
