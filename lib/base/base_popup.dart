import 'dart:math';

import 'package:flutter/material.dart';

class BaseGamePopup extends StatelessWidget {
  final Widget child;
  final Function()? onClose;

  const BaseGamePopup({
    Key? key,
    required this.child,
    this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final maxWidth = min(screenSize.width - 32.0, screenSize.width * 0.98);
    final minWdth = max(maxWidth, screenSize.width * 0.8);
    return MediaQuery(
        data: MediaQuery.of(context).copyWith(
          textScaleFactor: 1,
        ),
        child: WillPopScope(
          onWillPop: () => Future.value(false),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 6, 4, 0),
                    child: Container(
                        constraints: BoxConstraints(
                            maxWidth: maxWidth, minWidth: minWdth),
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16.0)),
                            border: Border.all(
                                color: const Color(0xFF803F9B), width: 2),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFF59276F),
                                Color(0xFF733888),
                              ],
                            )),
                        child: child),
                  ),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: GestureDetector(
                          onTap: onClose ?? () => Navigator.of(context).pop(),
                          child: Image.asset(
                              "assets/images/mini_game/btn_close.png"))),
                ],
              ),
            ),
          ),
        ));
  }
}
