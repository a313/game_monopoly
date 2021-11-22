#import "GameMonopolyPlugin.h"
#if __has_include(<game_monopoly/game_monopoly-Swift.h>)
#import <game_monopoly/game_monopoly-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "game_monopoly-Swift.h"
#endif

@implementation GameMonopolyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGameMonopolyPlugin registerWithRegistrar:registrar];
}
@end
