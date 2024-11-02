#import <UIKit/UIKit.h>

%hook BFCSplashWindow

- (void)makeKeyWindow {}

- (void)addSubview:(UIView *)view {}

%end

%hook UIViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    UIViewController *viewController = %orig(nibNameOrNil, nibBundleOrNil);
    
    if ([NSStringFromClass([viewController class]) isEqualToString:@"BFCBusinessSplashSwift.BusinessSplashViewController"]) {
        return nil;
    }
    
    return viewController;
}

%end
