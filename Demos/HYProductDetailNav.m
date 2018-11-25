//
//  HYProductDetailNav.m
//  Demos
//
//  Created by 邱海龙 on 2018/11/23.
//  Copyright © 2018 邱海龙. All rights reserved.
//

#import "HYProductDetailNav.h"

@implementation HYProductDetailNav
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
        [self layoutUI];
    }
    return self;
}
- (void)initUI{
    [self backBtn];
    [self shareBtn];
    [self shopCartBtn];
}
- (void)layoutUI{
    [self.backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(15);
        make.bottom.equalTo(self).offset(-2);
        make.width.height.mas_equalTo(40);
    }];
    [self.shareBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-15);
        make.bottom.equalTo(self).offset(-2);
        make.width.height.mas_equalTo(40);
    }];
    [self.shopCartBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.shareBtn.mas_left).offset(-10);
        make.bottom.equalTo(self).offset(-2);
        make.width.height.mas_equalTo(40);
    }];
    
}
- (void)setRatio:(CGFloat)ratio{
    _ratio = ratio;
    self.backgroundColor = [UIColor colorWithRed:0.4 green:0.5 blue:1 alpha:ratio];
    self.shareBtn.tintColor =
    self.backBtn.tintColor =
    self.shopCartBtn.tintColor =
    [UIColor colorWithRed:ratio green:ratio blue:ratio alpha:1];
    
    self.shareBtn.backgroundColor =
    self.backBtn.backgroundColor =
    self.shopCartBtn.backgroundColor =
    [UIColor colorWithRed:0.6 green:0.3 blue:0.6 alpha:1-ratio];;
}
- (UIButton *)backBtn{
    if (!_backBtn) {
        UIButton *btn = [self btn];
        [self addSubview:btn];
        _backBtn = btn;
    }
    return _backBtn;
}
- (UIButton *)shopCartBtn{
    if (!_shopCartBtn) {
        UIButton *btn = [self btn];
        [self addSubview:btn];
        _shopCartBtn = btn;
    }
    return _shopCartBtn;
}
- (UIButton *)shareBtn{
    if (!_shareBtn) {
        UIButton *btn = [self btn];
        [self addSubview:btn];
        _shareBtn = btn;
    }
    return _shareBtn;
}

- (UIButton *)btn{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[[UIImage imageNamed:@"back"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
    btn.layer.cornerRadius = 20;
    return btn;
}
@end
