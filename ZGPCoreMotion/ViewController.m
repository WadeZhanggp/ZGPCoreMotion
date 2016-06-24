//
//  ViewController.m
//  ZGPCoreMotion
//
//  Created by 张光鹏 on 16/6/23.
//  Copyright © 2016年 Tsinova. All rights reserved.
//

#import "ViewController.h"
#import "AccelerometerController.h"
#import "CMMotionController.h"

#define SIZE [UIScreen mainScreen].bounds.size

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *acceleButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 100, (SIZE.width - 100), 50)];
    acceleButton.backgroundColor = [UIColor grayColor];
    [acceleButton setTitle:@"Accelerometer重力感应" forState:UIControlStateNormal];
    [acceleButton addTarget:self action:@selector(acceleAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:acceleButton];
    
    UIButton *cmmotionButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 200, (SIZE.width - 100), 50)];
    cmmotionButton.backgroundColor = [UIColor grayColor];
    [cmmotionButton setTitle:@"CMMotion重力感应" forState:UIControlStateNormal];
    [cmmotionButton addTarget:self action:@selector(cmmotionAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:cmmotionButton];
        
    
}

- (void)acceleAction{
    
    AccelerometerController *accelerometerController = [[AccelerometerController alloc] init];
    [self.navigationController pushViewController:accelerometerController animated:YES];

}

- (void)cmmotionAction{
    
    CMMotionController *cmmotionController = [[CMMotionController alloc] init];
    [self.navigationController pushViewController:cmmotionController animated:YES];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
