//
//  ZGPCMMotionManager.m
//  ZGPCoreMotion
//
//  Created by 张光鹏 on 16/6/24.
//  Copyright © 2016年 Tsinova. All rights reserved.
//

#import "ZGPCMMotionManager.h"


static ZGPCMMotionManager *instance;

@interface ZGPCMMotionManager()

@property (nonatomic, strong) CMMotionManager *cMMotionManager;

@end

@implementation ZGPCMMotionManager

+ (instancetype)shareInstance{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        instance = [[ZGPCMMotionManager alloc] init];
        instance.cMMotionManager = [[CMMotionManager alloc] init];
        
        
    });
    return instance;

}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        
    }
    return self;
}

- (void)startGetCMMotion{
    
    if (_cMMotionManager.deviceMotionAvailable) {
        _cMMotionManager.deviceMotionUpdateInterval = 0.01f;
        [_cMMotionManager startDeviceMotionUpdatesToQueue:[NSOperationQueue mainQueue] withHandler:^(CMDeviceMotion * _Nullable motion, NSError * _Nullable error) {
            
            NSLog(@"spped-x = %f, y = %f, z = %f",motion.userAcceleration.x,motion.userAcceleration.y,motion.userAcceleration.z);
            if (self.delegate && [self.delegate respondsToSelector:@selector(getCMDeviceMotion:)]) {
                [self.delegate getCMDeviceMotion:motion];
            }
            
            
        }];
    }


}

- (void)stopGetCMMotion{
    [_cMMotionManager stopDeviceMotionUpdates];
}

@end
