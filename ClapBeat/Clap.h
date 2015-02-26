//
//  Clap.h
//  ClapBeat
//
//  Created by yukihiro moriyama on 2015/02/26.
//  Copyright (c) 2015年 YukihiroMoriyama. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface Clap : NSObject


+(id)initClap;
-(id)init;
-(void)setSound;
-(void)play;
-(void)repeatClap:(int)count;

@end

