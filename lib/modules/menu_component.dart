import 'package:flutter/material.dart';
import 'package:game_monopoly/extension.dart';
import 'package:game_monopoly/share_widget/game_button.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuComponent extends StatelessWidget {
  const MenuComponent(
      {Key? key,
      this.onPlay,
      this.onShowRule,
      this.onShowBXH,
      this.onGetMoreTurn})
      : super(key: key);
  final Function()? onPlay;
  final Function()? onShowRule;
  final Function()? onShowBXH;
  final Function()? onGetMoreTurn;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GameButton.yellow(
          onTap: onPlay,
          height: 64,
          width: 240,
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/mini_game/ic_play.png",
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 12),
                Text(
                  "CHƠI NGAY",
                  textScaleFactor: 1,
                  style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: const Color(0xFF2C0F3B)),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 24),
        GameButton.green(
          onTap: onGetMoreTurn,
          height: 48,
          width: 225,
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/mini_game/ic_share.png",
                  width: 18,
                  height: 18,
                ),
                const SizedBox(width: 12),
                Text(
                  "Kiếm thêm lượt",
                  textScaleFactor: 1,
                  style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        GameButton.green(
          onTap: onShowBXH,
          height: 48,
          width: 225,
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/mini_game/ic_rank.png",
                  width: 18,
                  height: 18,
                ),
                12.width,
                Text(
                  "Bảng Xếp Hạng",
                  textScaleFactor: 1,
                  style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        12.height,
        GameButton.green(
          onTap: onShowRule,
          height: 48,
          width: 225,
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/mini_game/ic_help.png",
                  width: 18,
                  height: 18,
                ),
                const SizedBox(width: 12),
                Text(
                  "Hướng dẫn",
                  style: GoogleFonts.openSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
