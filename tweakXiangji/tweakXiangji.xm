// See http://iphonedevwiki.net/index.php/Logos

#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>


@interface CAMViewfinderViewController : UIViewController

@end


%hook CAMViewfinderViewController
- (void)viewDidLoad {
    %log;
    %orig;

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UILabel *label = [UILabel new];
        label.text = @"😂";
        label.font = [UIFont systemFontOfSize:30];
        [label sizeToFit];
        label.center = CGPointMake(self.view.center.x,  [UIScreen mainScreen].bounds.size.height - 40);
        [self.view addSubview:label];
    });
}
%end
