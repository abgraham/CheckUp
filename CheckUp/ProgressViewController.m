//
//  ProgressViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/21/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "ProgressViewController.h"
#import "HeaderView.h"

@interface ProgressViewController ()
@property (weak, nonatomic) IBOutlet HeaderView *header;
@property (weak, nonatomic) IBOutlet UIButton *backButton;

@end

@implementation ProgressViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.header.label.text = @"Progress";
    self.backButton.titleLabel.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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