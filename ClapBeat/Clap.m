//
//  Clap.m
//  ClapBeat
//
//  Created by yukihiro moriyama on 2015/02/26.
//  Copyright (c) 2015年 YukihiroMoriyama. All rights reserved.
//

#import "Clap.h"

@implementation Clap {
    //音ファイルの所在を示すURL
    CFURLRef soundURL;
    
    //サウンドIDを作成，iOSはこの値をもとに再生する音を識別する
    SystemSoundID soundID;
}

-(void)setSound {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    soundURL = CFBundleCopyResourceURL(mainBundle, CFSTR("clap"), CFSTR("wav"), nil);
    
    AudioServicesCreateSystemSoundID(soundURL, &soundID);
}

-(void)play {
    AudioServicesPlaySystemSound(soundID);
}

-(void)repeatClap:(int)count {
    int i = 0;
    
    while(i < count) {
        [self play];
        
        i++;
        
        usleep(500000);
    }
}

+(id)initClap {
    return [[self alloc] init];
}

-(id)init {
    self = [super init];
    [self setSound];
    
    return self;
}

@end