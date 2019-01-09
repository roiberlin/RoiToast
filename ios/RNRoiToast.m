
#import "RNRoiToast.h"
#import <UIKit/UIKit.h>
#import "UIApplication+topViewController.h"

@implementation RNRoiToast

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(show:(NSString *)text)
{
    dispatch_async([self methodQueue], ^{
        [self displayAlertController:text];
    });
}

-(void) displayAlertController:(NSString *)text
{
    UIViewController *topVC = [[UIApplication sharedApplication] getTopMostViewController];
    
    if (topVC == nil)
    {
        return;
    }
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"alert title" message:text preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    
    [topVC presentViewController:alert animated:YES completion:nil];
}

@end
  
