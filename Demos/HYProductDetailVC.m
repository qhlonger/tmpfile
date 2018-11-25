//
//  HYProductDetailVC.m
//  Demos
//
//  Created by 邱海龙 on 2018/11/23.
//  Copyright © 2018 邱海龙. All rights reserved.
//
#import "HYUtility.h"

#import "HYProductDetailVC.h"
#import "HYProductDetailNav.h"
#import "HYProductDetailHeader.h"


#import "UITableView+FDTemplateLayoutCell.h"

#import "HYProductDetailShopInfoCell.h"
#import "HYProductDetailInfoCell.h"
#define AdH 300
#define TriggerH (300-64)
#define navH 64
@interface HYProductDetailVC ()<UITableViewDataSource, UITableViewDelegate>
@property(nonatomic, weak) UITableView *tableView;
@property(nonatomic, weak) HYProductDetailNav *nav;
@property(nonatomic, weak) HYProductDetailHeader *header;
@end

@implementation HYProductDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
    [self layoutUI];
    
}
- (void)initUI{
    [self tableView];
    [self nav];
    [self header];
    [self.tableView registerClass:[HYProductDetailShopInfoCell class] forCellReuseIdentifier:@"HYProductDetailShopInfoCell"];
    [self.tableView registerClass:[HYProductDetailInfoCell class] forCellReuseIdentifier:@"HYProductDetailInfoCell"];
}
- (void)layoutUI{
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    [self.nav mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.equalTo(self.view);
        make.height.mas_equalTo(64);
    }];
    
}
- (HYProductDetailHeader *)header{
    if (!_header) {
        HYProductDetailHeader *header = [[HYProductDetailHeader alloc]init];
        header.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, AdH);
        self.tableView.tableHeaderView = header;
        _header = header;
    }
    return _header;
}
- (HYProductDetailNav *)nav{
    if (!_nav) {
        HYProductDetailNav *nav = [[HYProductDetailNav alloc]init];
        nav.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64);
        nav.backgroundColor = [UIColor orangeColor];
        
        [self.view addSubview:nav];
        _nav = nav;
    }
    return _nav;
}
- (UITableView *)tableView{
    if (!_tableView) {
        UITableView *tableView = ({
            tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
            tableView.delegate = self;
            tableView.dataSource = self;
            tableView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
            tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
            [self.view addSubview:tableView];
            tableView;
        });
        
        _tableView = tableView;
    }
    return _tableView;
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat offsetY = scrollView.contentOffset.y;
    if(offsetY < 0){
        self.nav.ratio = 0;
    }else if(offsetY > TriggerH){
        self.nav.ratio = 1;
        
    }else{
        CGFloat ratio = [HYUtility getRatioWithMax:TriggerH min:navH mid:offsetY];
        self.nav.ratio = ratio;
    }
    if(offsetY < 0){
        self.header.ratio = 0;
    }else if(offsetY > AdH){
        self.header.ratio = 1;
    }else{
        CGFloat ratio = [HYUtility getRatioWithMax:AdH min:0 mid:offsetY];
        self.header.ratio = ratio;
    }
    
    
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 10;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section == 0){
        return 1;
    }
    if(section == 2){
        return 1;
    }
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 0){
        return [tableView fd_heightForCellWithIdentifier:@"HYProductDetailInfoCell" configuration:^(id cell) {
            
        }];
        
    }
    if(indexPath.section == 2){
        return [tableView fd_heightForCellWithIdentifier:@"HYProductDetailShopInfoCell" configuration:^(id cell) {
            
        }];
    }
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = @"123";
    
    
    if(indexPath.section == 0){
        HYProductDetailInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HYProductDetailInfoCell" forIndexPath:indexPath];
        return cell;
    }
    if(indexPath.section == 2){
        HYProductDetailShopInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HYProductDetailShopInfoCell" forIndexPath:indexPath];
        return cell;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
