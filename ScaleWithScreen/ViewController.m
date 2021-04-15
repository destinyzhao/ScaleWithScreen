//
//  ViewController.m
//  ScaleWithScreen
//
//  Created by Destiny on 2021/4/14.
//

#import "ViewController.h"
#import "ScaleXibController.h"
#import "ScaleCodeController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)xibBtnAction:(id)sender {
    ScaleXibController *xibController = [[ScaleXibController alloc]init];
    [self.navigationController pushViewController:xibController animated:YES];
    
}

- (IBAction)codeBtnAction:(id)sender {
    ScaleCodeController *codeController = [[ScaleCodeController alloc]init];
    [self.navigationController pushViewController:codeController animated:YES];
}

@end
