#import "VgtsLoginPlugin.h"
#if __has_include(<vgts_login/vgts_login-Swift.h>)
#import <vgts_login/vgts_login-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "vgts_login-Swift.h"
#endif

@implementation VgtsLoginPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVgtsLoginPlugin registerWithRegistrar:registrar];
}
@end
