//
//  UIApplication+topViewController.h
//  RNRoiToast
//
//  Created by Roi Berlin on 08/01/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIApplication (TopViewController)

- (UIViewController*) getTopMostViewController;

@end

NS_ASSUME_NONNULL_END
