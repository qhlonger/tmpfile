//
//  HYProductDetailShopInfoCell.m
//  Demos
//
//  Created by 邱海龙 on 2018/11/25.
//  Copyright © 2018 邱海龙. All rights reserved.
//

#import "HYProductDetailShopInfoCell.h"

@implementation HYProductDetailShopInfoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initUI];
        [self layoutUI];
    }
    return self;
}
- (void)initUI{
    [self iconView];
    [self titleLabel];
    [self descLabel];
    
    [self followLabel];
    [self followCountLabel];
    
    [self collectionLabel];
    [self collectionCountLabel];
    
    self.iconView.image = [UIImage imageNamed:@"1"];
    self.titleLabel.text = @"华源直营";
    self.descLabel.text = @"华源直营";
    self.followCountLabel.text = @"123";
    self.followLabel.text = @"关注人数";
    
    self.collectionCountLabel.text = @"123";
    self.collectionLabel.text = @"店铺收藏";
    
    self.scoreCountLabel.text = @"123";
    self.scoreLabel.text = @"店铺评分";
}
- (void)layoutUI{
    [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(10);
        make.top.equalTo(self.contentView).offset(10);
        make.width.height.mas_equalTo(80);
    }];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconView.mas_right).offset(10);
        make.top.equalTo(self.contentView).offset(10);
        make.right.equalTo(self.contentView.mas_right).offset(-10);
    }];
    [self.descLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconView.mas_right).offset(10);
        make.top.equalTo(self.titleLabel.mas_bottom).offset(10);
        make.right.equalTo(self.contentView.mas_right).offset(-10);
    }];
    
    
    [self.followCountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView).multipliedBy(0.5);
        make.top.equalTo(self.iconView.mas_bottom).offset(30);
    }];
    [self.followLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView).multipliedBy(0.5);
        make.top.equalTo(self.followCountLabel.mas_bottom).offset(10);
        make.bottom.equalTo(self.contentView).offset(-20);
    }];
    
    [self.collectionCountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.followCountLabel);
    }];
    [self.collectionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.followLabel);
    }];
    
    [self.scoreCountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView).multipliedBy(1.5);
        make.centerY.equalTo(self.followCountLabel);
    }];
    [self.scoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView).multipliedBy(1.5);
        make.centerY.equalTo(self.followLabel);
    }];
    
}
- (UIImageView *)iconView{
    if (!_iconView) {
        UIImageView *imageView = ({
            imageView = [[UIImageView alloc]init];
            [self.contentView addSubview:imageView];
            imageView;
        });
        _iconView = imageView;
    }
    return _iconView;
}
- (UILabel *)titleLabel{
    if (!_titleLabel) {
        UILabel *label = ({
            label = [[UILabel alloc]init];
            [self.contentView addSubview:label];
            label;
        });
        _titleLabel = label;
    }
    return _titleLabel;
}
- (UILabel *)descLabel{
    if (!_descLabel) {
        UILabel *label = ({
            label = [[UILabel alloc]init];
            [self.contentView addSubview:label];
            label;
        });
        _descLabel = label;
    }
    return _descLabel;
}

- (UILabel *)followLabel{
    if (!_followLabel) {
        UILabel *label = ({
            label = [[UILabel alloc]init];
            [self.contentView addSubview:label];
            label;
        });
        _followLabel = label;
    }
    return _followLabel;
}
- (UILabel *)followCountLabel{
    if (!_followCountLabel) {
        UILabel *label = ({
            label = [[UILabel alloc]init];
            [self.contentView addSubview:label];
            label;
        });
        _followCountLabel = label;
    }
    return _followCountLabel;
    
}

- (UILabel *)collectionLabel{
    if (!_collectionLabel) {
        UILabel *label = ({
            label = [[UILabel alloc]init];
            [self.contentView addSubview:label];
            label;
        });
        _collectionLabel = label;
    }
    return _collectionLabel;
}
- (UILabel *)collectionCountLabel{
    if (!_collectionCountLabel) {
        UILabel *label = ({
            label = [[UILabel alloc]init];
            [self.contentView addSubview:label];
            label;
        });
        _collectionCountLabel = label;
    }
    return _collectionCountLabel;
    
}

- (UILabel *)scoreLabel{
    if (!_scoreLabel) {
        UILabel *label = ({
            label = [[UILabel alloc]init];
            [self.contentView addSubview:label];
            label;
        });
        _scoreLabel = label;
    }
    return _scoreLabel;
    
}
- (UILabel *)scoreCountLabel{
    if (!_scoreCountLabel) {
        UILabel *label = ({
            label = [[UILabel alloc]init];
            [self.contentView addSubview:label];
            label;
        });
        _scoreCountLabel = label;
    }
    return _scoreCountLabel;
    
}

@end
