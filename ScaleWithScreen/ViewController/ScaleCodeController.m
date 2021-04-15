//
//  ScaleCodeController.m
//  ScaleWithScreen
//
//  Created by Destiny on 2021/4/15.
//

#import "ScaleCodeController.h"
#import <Masonry/Masonry.h>
#import "Macro.h"
#import "FitScaleHelper.h"
#import "UIFont+Fit.h"

@interface ScaleCodeController ()


@end

@implementation ScaleCodeController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.edgesForExtendedLayout = UIRectEdgeBottom;
    self.navigationController.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"纯代码适配";
    [self setupView];
}


- (void)setupView{
    UIView *bgView = [UIView new];
    bgView.backgroundColor = [UIColor systemGray4Color];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:bgView];
    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(AdaptW(40));
        make.left.mas_equalTo(AdaptW(16));
        make.right.mas_equalTo(AdaptW(-16));
        make.height.mas_equalTo(AdaptW(95));
    }];
   
    
    UILabel *label = [UILabel new];
    label.text = @"屏幕适配字体";
    label.font = AdaptFont(14);
//    label.font = [UIFont systemFontOfSize:14];
    label.backgroundColor = [UIColor systemOrangeColor];
    [bgView addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.mas_equalTo(AdaptW(8));
    }];
    
    UIView *readView = [UIView new];
    readView.backgroundColor = [UIColor redColor];
    [bgView addSubview:readView];
    [readView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(label.mas_bottom).mas_offset(AdaptW(8));
        make.left.mas_equalTo(AdaptW(8));
        make.width.height.mas_equalTo(AdaptW(50));
    }];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
