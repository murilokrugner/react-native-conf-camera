#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(ConfCamera, NSObject)

RCT_EXTERN_METHOD(openCamera:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)
@end
