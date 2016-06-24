//
//  CMMotionController.m
//  ZGPCoreMotion
//
//  Created by 张光鹏 on 16/6/23.
//  Copyright © 2016年 Tsinova. All rights reserved.
//

#import "CMMotionController.h"
#import <CoreMotion/CoreMotion.h>
#import "ZGPCMMotionManager.h"

@interface CMMotionController()


@end

@implementation CMMotionController

- (void)viewDidLoad{
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    [[ZGPCMMotionManager shareInstance] startGetCMMotion];
    
    [ZGPCMMotionManager shareInstance].delegate = self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [[ZGPCMMotionManager shareInstance] stopGetCMMotion];

}


@end
