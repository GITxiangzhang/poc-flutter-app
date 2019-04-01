//
//  NativeAlertView.m
//  PocDemo
//
//  Created by Kipling on 2019/3/27.
//  Copyright © 2019年 Kipling. All rights reserved.
//

#import "NativeAlertView.h"
#import <KLCPopup/KLCPopup.h>

@interface NativeAlertView()

//弹出视图控件
@property (nonatomic, strong) KLCPopup *customPopup;
//输入框
@property (weak, nonatomic) IBOutlet UITextField *nativeTF;

@end

@implementation NativeAlertView

- (void)showActionPopView {
    
    KLCPopupLayout layout = KLCPopupLayoutMake(KLCPopupHorizontalLayoutCenter, KLCPopupVerticalLayoutCenter);
    KLCPopup *popup = [KLCPopup popupWithContentView:self
                                            showType:KLCPopupShowTypeShrinkIn
                                         dismissType:KLCPopupDismissTypeFadeOut
                                            maskType:KLCPopupMaskTypeDimmed
                            dismissOnBackgroundTouch:YES
                               dismissOnContentTouch:NO];
    popup.dimmedMaskAlpha = 0.5;
    self.customPopup = popup;
    [popup showWithLayout:layout];
}

- (IBAction)pop:(UIButton *)sender {
    [self.customPopup dismiss:YES];
}

@end
