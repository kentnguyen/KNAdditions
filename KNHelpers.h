#import <CoreFoundation/CoreFoundation.h>
#import <QuartzCore/CAAnimation.h>

extern BOOL IsDeviceIPad();
extern BOOL IsDeviceIPad2();

extern BOOL IsOS5();

extern NSString * deviceModel();
extern CATransition * fadeTransition();

#define IS_4_INCH    ([UIScreen mainScreen].bounds.size.height == 568.0)
