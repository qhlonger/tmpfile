//
//  HYProductDetailInfoCell.m
//  Demos
//
//  Created by 邱海龙 on 2018/11/25.
//  Copyright © 2018 邱海龙. All rights reserved.
//

#import "HYProductDetailInfoCell.h"

@implementation HYProductDetailInfoCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initUI];
        [self layoutUI];
    }
    return self;
}
- (void)initUI{
    [self titleLabel];
    [self descLabel];
    
    [self priceLabel];
    [self expressLabel];
    
    [self soldCountLabel];
    [self locationLabel];
    
    self.titleLabel.text = @"华源直苏打粉根深蒂固撒的广安市嘎嘎营";
    self.descLabel.text = @"华源直阿瑟费噶手工发饰发顺丰啊师傅啊师傅营";
    self.priceLabel.text = @"¥123";
    self.expressLabel.text = @"快递：0.00";
    
    self.soldCountLabel.text = @"月销123";
    self.locationLabel.text = @"江西南昌";
    
}
- (void)layoutUI{
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(10);
        make.right.equalTo(self.contentView.mas_right).offset(-10);
        make.top.equalTo(self.contentView).offset(10);
    }];
    [self.descLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleLabel.mas_bottom).offset(10);
        make.left.equalTo(self.contentView).offset(10);
        make.right.equalTo(self.contentView.mas_right).offset(-10);
    }];
    
    
    [self.priceLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.descLabel.mas_bottom).offset(10);
        make.left.equalTo(self.contentView).offset(10);
    }];
    [self.expressLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.priceLabel.mas_bottom).offset(10);
        make.bottom.equalTo(self.contentView).offset(-20);
//        make.centerX.equalTo(self.contentView).multipliedBy(0.5);
        make.left.equalTo(self.contentView).offset(10);
        make.width.equalTo(self.contentView).multipliedBy(0.33);
    }];
    
    [self.soldCountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.contentView);
        make.centerY.equalTo(self.expressLabel);
    }];
    
    [self.locationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.equalTo(self.contentView).multipliedBy(1.5);
        make.centerY.equalTo(self.expressLabel);
        make.right.equalTo(self.contentView).offset(-10);
        make.width.equalTo(self.contentView).multipliedBy(0.33);
    }];
    
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

- (UILabel *)priceLabel{
    if (!_priceLabel) {
        UILabel *label = ({
            label = [[UILabel alloc]init];
            [self.contentView addSubview:label];
            label;
        });
        _priceLabel = label;
    }
    return _priceLabel;
}
- (UILabel *)expressLabel{
    if (!_expressLabel) {
        UILabel *label = ({
            label = [[UILabel alloc]init];
            [self.contentView addSubview:label];
            label;
        });
        _expressLabel = label;
    }
    return _expressLabel;
    
}

- (UILabel *)soldCountLabel{
    if (!_soldCountLabel) {
        UILabel *label = ({
            label = [[UILabel alloc]init];
            [self.contentView addSubview:label];
            label;
        });
        _soldCountLabel = label;
    }
    return _soldCountLabel;
}

- (UILabel *)locationLabel{
    if (!_locationLabel) {
        UILabel *label = ({
            label = [[UILabel alloc]init];
            label.textAlignment = NSTextAlignmentRight;
            [self.contentView addSubview:label];
            label;
        });
        _locationLabel = label;
    }
    return _locationLabel;
    
}

@end
