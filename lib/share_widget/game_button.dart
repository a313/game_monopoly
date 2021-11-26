import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {
  const GameButton(
      {Key? key,
      this.onTap,
      this.width,
      this.height,
      this.title,
      this.child,
      this.style,
      required this.backgroundPath})
      : assert(child != null || (title != null && style != null)),
        super(key: key);

  final Function()? onTap;
  final double? width;
  final double? height;
  final String? title;
  final TextStyle? style;
  final Widget? child;
  final String backgroundPath;

  factory GameButton.yellow({
    Key? key,
    Function()? onTap,
    double? width,
    double? height,
    String? title,
    Widget? child,
    TextStyle? style,
  }) {
    return GameButton(
      backgroundPath: "assets/images/btn_yellow.png",
      child: child,
      title: title,
      style: style,
      width: width,
      height: height,
      onTap: onTap,
    );
  }

  factory GameButton.green({
    Key? key,
    Function()? onTap,
    double? width,
    double? height,
    String? title,
    Widget? child,
    TextStyle? style,
  }) {
    return GameButton(
      backgroundPath: "assets/images/btn_green.png",
      child: child,
      title: title,
      style: style,
      width: width,
      height: height,
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap?.call(),
      child: SizedBox(
        height: height ?? 48,
        width: width ?? 135,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(backgroundPath, package: "game_monopoly"))),
          child: child ??
              Center(
                  child: Text(
                title!,
                textScaleFactor: 1,
                style: style!,
              )),
        ),
      ),
    );
  }
}
