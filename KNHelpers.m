#import "KNHelpers.h"
#import <sys/utsname.h>
#import <QuartzCore/QuartzCore.h>

BOOL IsDeviceIPad() {
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 30200
  if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
    return YES;
  }
#endif
  return NO;
}

BOOL IsDeviceIPad2() {
  return (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad && [UIImagePickerController isSourceTypeAvailable: UIImagePickerControllerSourceTypeCamera]);
}

BOOL IsOS5() {
  return [[[UIDevice currentDevice] systemVersion] floatValue] >= 5.00;
}

NSString * deviceModel() {
  struct utsname systemInfo;
  uname(&systemInfo);

  return [NSString stringWithCString:systemInfo.machine
                            encoding:NSUTF8StringEncoding];
}

CATransition * fadeTransition() {
  CATransition* transition = [CATransition animation];
  transition.duration = 0.8;
  transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  transition.type = kCATransitionFade; //kCATransitionMoveIn; //, kCATransitionPush, kCATransitionReveal, kCATransitionFade
                                       //transition.subtype = kCATransitionFromTop; //kCATransitionFromLeft, kCATransitionFromRight, kCATransitionFromTop, kCATransitionFromBottom
  return transition;
}

