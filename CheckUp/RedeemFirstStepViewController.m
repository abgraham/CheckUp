//
//  RedeemFirstStepViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/19/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "RedeemFirstStepViewController.h"
#import "HeaderView.h"

@interface RedeemFirstStepViewController ()
@property (weak, nonatomic) IBOutlet HeaderView *header;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *congratsLabel;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;
@property (weak, nonatomic) IBOutlet UILabel *inBenefitsLabel;
@property (weak, nonatomic) IBOutlet UIButton *returnToProfileButton;

@end

@implementation RedeemFirstStepViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Redeem first step");
    self.header.label.font = [UIFont fontWithName:@"Avenir-Light" size:22.0];
    self.nameLabel.font = [UIFont fontWithName:@"Avenir-Black" size:20.0];
    self.congratsLabel.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
    self.valueLabel.font = [UIFont fontWithName:@"Avenir-Black" size:22.0];
    self.inBenefitsLabel.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
    self.returnToProfileButton.titleLabel.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
    // Do any additional setup after loading the view.
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
