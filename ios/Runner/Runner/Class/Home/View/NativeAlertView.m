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
@property (nonatomic, copy) CompleteEdit completeEdit;

@end

@implementation NativeAlertView

- (void)showActionPopViewComplete:(CompleteEdit)complete {

    KLCPopupLayout layout = KLCPopupLayoutMake(KLCPopupHorizontalLayoutCenter, KLCPopupVerticalLayoutCenter);
    KLCPopup *popup = [KLCPopup popupWithContentView:self
                                            showType:KLCPopupShowTypeShrinkIn
                                         dismissType:KLCPopupDismissTypeFadeOut
                                            maskType:KLCPopupMaskTypeDimmed
                            dismissOnBackgroundTouch:YES
                               dismissOnContentTouch:NO];
    popup.dimmedMaskAlpha = 0.5;
    self.customPopup = popup;
    self.completeEdit = complete;
    [popup showWithLayout:layout];
}

- (IBAction)pop:(UIButton *)sender {
    if (self.completeEdit) {
        self.completeEdit(self.nativeTF.text);
    }
    [self.customPopup dismiss:YES];
}

@end
