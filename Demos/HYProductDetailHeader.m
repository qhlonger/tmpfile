//
//  HYProductDetailHeader.m
//  Demos
//
//  Created by 邱海龙 on 2018/11/23.
//  Copyright © 2018 邱海龙. All rights reserved.
//

#import "HYProductDetailHeader.h"
#define offH 200
@interface HYProductDetailHeaderImageCell ()


@end
@implementation HYProductDetailHeaderImageCell
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
    [self iconView];
    
}
- (void)layoutUI{
    [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView);
    }];
}
- (UIImageView *)iconView{
    if (!_iconView) {
        UIImageView *imageView = ({
            imageView = [[UIImageView alloc]init];
            imageView.contentMode = UIViewContentModeScaleAspectFill;
            imageView.clipsToBounds = YES;
            [self addSubview:imageView];
            imageView;
        });
        _iconView = imageView;
    }
    return _iconView;
}

@end

@implementation HYProductDetailHeaderBottomView


@end

@interface HYProductDetailHeader ()<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@end

@implementation HYProductDetailHeader

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
    [self collectionView];
    self.clipsToBounds = YES;
    [self.collectionView registerClass:[HYProductDetailHeaderImageCell class]
            forCellWithReuseIdentifier:@"HYProductDetailHeaderImageCell"];
}
- (void)layoutUI{
//    [self.collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.width.height.equalTo(self);
//        make.centerX.equalTo(self);
//        make.bottom.equalTo(self);
//    }];
    CGFloat y = [HYUtility getMidWithMax:offH min:0 ratio:self.ratio];
    self.collectionView.frame = CGRectMake(0, y, self.bounds.size.width, self.bounds.size.height);
    
}
- (void)layoutSubviews{
    [self layoutUI];
}

- (void)setRatio:(CGFloat)ratio{
    _ratio = ratio;
    
    [self layoutUI];
//    [self.collectionView mas_remakeConstraints:^(MASConstraintMaker *make) {
//        make.width.height.equalTo(self);
//        make.centerX.equalTo(self);
//        make.bottom.equalTo(self);
//    }];
}
- (UICollectionView *)collectionView{
    if (!_collectionView) {
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
        flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        
        UICollectionView *collectionView = ({
            collectionView = [[UICollectionView alloc]initWithFrame:self.bounds collectionViewLayout:flowLayout];
            collectionView.pagingEnabled = YES;
            collectionView.dataSource = self;
            collectionView.delegate = self;
            collectionView.backgroundColor = [UIColor clearColor];
            [self addSubview:collectionView];
            collectionView;
        });
        _collectionView = collectionView;
    }
    return _collectionView;
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 3;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return collectionView.bounds.size;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    HYProductDetailHeaderImageCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HYProductDetailHeaderImageCell" forIndexPath:indexPath];
    
    cell.iconView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld",indexPath.row]];
    
    return cell;
}
@end
