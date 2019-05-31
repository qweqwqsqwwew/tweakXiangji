#line 1 "/Volumes/APP/XcodeProject/tweakXiangji/tweakXiangji/tweakXiangji.xm"


#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
































@interface CAMViewfinderViewController : UIViewController

@end



#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class CAMViewfinderViewController; 
static void (*_logos_orig$_ungrouped$CAMViewfinderViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$CAMViewfinderViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST, SEL); 

#line 46 "/Volumes/APP/XcodeProject/tweakXiangji/tweakXiangji/tweakXiangji.xm"

static void _logos_method$_ungrouped$CAMViewfinderViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL CAMViewfinderViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    HBLogDebug(@"-[<CAMViewfinderViewController: %p> viewDidLoad]", self);
    _logos_orig$_ungrouped$CAMViewfinderViewController$viewDidLoad(self, _cmd);

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UILabel *label = [UILabel new];
        label.text = @"😂";
        label.font = [UIFont systemFontOfSize:30];
        [label sizeToFit];
        label.center = CGPointMake(self.view.center.x,  [UIScreen mainScreen].bounds.size.height - 40);
        [self.view addSubview:label];




    });
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$CAMViewfinderViewController = objc_getClass("CAMViewfinderViewController"); MSHookMessageEx(_logos_class$_ungrouped$CAMViewfinderViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$CAMViewfinderViewController$viewDidLoad, (IMP*)&_logos_orig$_ungrouped$CAMViewfinderViewController$viewDidLoad);} }
#line 65 "/Volumes/APP/XcodeProject/tweakXiangji/tweakXiangji/tweakXiangji.xm"
