//
//  ViewController.m
//  labeldemo
//
//  Created by guohui on 16/9/13.
//  Copyright © 2016年 guohui. All rights reserved.
//

#import "ViewController.h"
// RGB颜色转换（16进制->10进制）
#define UIColorFromRGBA(rgbValue, alphaValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0x0000FF))/255.0 \
alpha:alphaValue]

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label_one;
@property (weak, nonatomic) IBOutlet UILabel *label_two;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *oldPrice = [NSString stringWithFormat:@"原价 %@",@"$24234"];
    NSMutableAttributedString *attr = [[NSMutableAttributedString alloc]initWithString:oldPrice];
    [attr addAttribute:NSStrikethroughStyleAttributeName value:@(NSUnderlinePatternSolid | NSUnderlineStyleSingle) range:NSMakeRange(0, oldPrice.length)];
    [_label_one setAttributedText:attr];
    
    
    NSAttributedString *attrStr =
    [[NSAttributedString alloc]initWithString:@"$3333"
                                   attributes:
     @{NSFontAttributeName:[UIFont systemFontOfSize:20.f],
       NSForegroundColorAttributeName:UIColorFromRGBA(0xf81234, 1.0),
       NSStrikethroughStyleAttributeName:@(NSUnderlineStyleSingle|NSUnderlinePatternSolid),NSStrikethroughColorAttributeName:UIColorFromRGBA(0x000000, 1.0)}];
    
    _label_two.attributedText = attrStr;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
