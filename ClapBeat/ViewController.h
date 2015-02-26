//
//  ViewController.h
//  ClapBeat
//
//  Created by yukihiro moriyama on 2015/02/26.
//  Copyright (c) 2015年 YukihiroMoriyama. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Clap.h"

@interface ViewController : UIViewController
<UIPickerViewDataSource, UIPickerViewDelegate>
{
    Clap *clapInstance;
    IBOutlet UIPickerView *clapPickerView;
    NSString *repeatNumbersForPicker [10];
    int repeatCount;
}

- (IBAction)play:(id)sender;


@end

