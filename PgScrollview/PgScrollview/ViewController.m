//
//  ViewController.m
//  PgScrollview
//
//  Created by 李康 on 15/7/14.
//  Copyright (c) 2015年 Luck. All rights reserved.
//

#import "ViewController.h"
#import "Pgscrollview.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Pgscrollview *scro = [[Pgscrollview alloc]initWithFrame:CGRectMake(0,KScreenH-200,KScreenW, 200)];
    
    scro.pageSize = 100;
    for (int i = 0; i<10; i++) {
        UIImageView *image = [[UIImageView alloc]initWithFrame:CGRectMake(i*100, 0, 100, 200)];
        image.image =[UIImage imageNamed:@"image"];
        image.contentMode = UIViewContentModeScaleAspectFit;
        [scro addSubview:image];
    }
    scro.contentSize = CGSizeMake(1000, 200);
    [self.view addSubview:scro];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
