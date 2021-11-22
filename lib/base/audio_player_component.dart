import 'package:flame/components.dart';
import 'package:flame_audio/flame_audio.dart';

class AudioPlayerComponent extends Component {
  @override
  Future<void>? onLoad() {
    FlameAudio.bgm.initialize();
    FlameAudio.audioCache.loadAll(
        ['bg_sound.mp3', 'engineCircular_000.ogg', 'engineCircular_000.ogg']);
    return super.onLoad();
  }

  void playBgm(String fileName) {
    FlameAudio.bgm.play(fileName);
  }

  void playSfx(String fileName) {
    FlameAudio.play(fileName);
  }

  void stopBgm() {
    FlameAudio.bgm.stop();
  }
}
