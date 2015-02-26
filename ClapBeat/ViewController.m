//
//  ViewController.m
//  ClapBeat
//
//  Created by yukihiro moriyama on 2015/02/26.
//  Copyright (c) 2015年 YukihiroMoriyama. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    clapInstance = [Clap initClap];
    
    repeatCount = 1;
    
    for (int i = 0; i < 10; i++) {
        NSString *numberText = [NSString stringWithFormat:@"%d回", i+1];
        repeatNumbersForPicker[i] = numberText;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 10;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return repeatNumbersForPicker[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    repeatCount = row + 1;
}


- (IBAction)play:(id)sender {
    [clapInstance repeatClap:repeatCount];
}

























@end
