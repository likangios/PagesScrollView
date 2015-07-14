//
//  Pgscrollview.m
//  PgScrollview
//
//  Created by 李康 on 15/7/14.
//  Copyright (c) 2015年 Luck. All rights reserved.
//

#import "Pgscrollview.h"

@interface Pgscrollview ()<UIScrollViewDelegate>

@end

@implementation Pgscrollview

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor orangeColor];
        self.delegate = self;
        self.decelerationRate = UIScrollViewDecelerationRateFast;
    }
    return self;
}
- (void)setPageSize:(CGFloat)pageSize{
    _pageSize = pageSize;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{

    CGFloat index = ceil ((scrollView.contentOffset.x-self.pageSize/2.0)/self.pageSize);
    
    
    [self setContentOffset:CGPointMake(index*self.pageSize, self.contentOffset.y) animated:YES];
    
    NSLog(@"scrollViewDidEndDragging scr.contentOffset.x %f .y %f --index %f",scrollView.contentOffset.x,scrollView.contentOffset.y,index);

}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
    CGFloat index = ceil ((scrollView.contentOffset.x-self.pageSize/2.0)/self.pageSize);
    
    
    [self setContentOffset:CGPointMake(index*self.pageSize, self.contentOffset.y) animated:YES];
    
    NSLog(@"Decelerating scr.contentOffset.x %f .y %f --index %f",scrollView.contentOffset.x,scrollView.contentOffset.y,index);
}


@end
