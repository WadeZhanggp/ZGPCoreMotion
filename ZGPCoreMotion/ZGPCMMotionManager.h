//
//  ZGPCMMotionManager.h
//  ZGPCoreMotion
//
//  Created by 张光鹏 on 16/6/24.
//  Copyright © 2016年 Tsinova. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMotion/CoreMotion.h>

@protocol ZGPCMMotionManagerDelegate <NSObject>

- (void)getCMDeviceMotion:(CMDeviceMotion *)motion;

@end

@interface ZGPCMMotionManager : NSObject

@property (nonatomic, weak) id<ZGPCMMotionManagerDelegate >delegate;

+ (instancetype)shareInstance;

- (void)startGetCMMotion;

- (void)stopGetCMMotion;

@end
