//
//  ProfileHomeViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/9/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "ProfileHomeViewController.h"
#import "HeaderView.h"
#import "AppDelegate.h"

@interface ProfileHomeViewController ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *pointsLabel;
@property (weak, nonatomic) IBOutlet UIButton *redeemButton;
@property (weak, nonatomic) IBOutlet UILabel *healthProviderLabel;
@property (weak, nonatomic) IBOutlet UILabel *healthProviderContentLabel;
@property (weak, nonatomic) IBOutlet UIButton *yourProgressButtonLabel;
@property (weak, nonatomic) IBOutlet HeaderView *headerView;


@end

@implementation ProfileHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Profile home");
    self.headerView.label.text = @"Profile";
    self.nameLabel.font = [UIFont fontWithName:@"Avenir-Black" size:16.0];
    self.pointsLabel.font = [UIFont fontWithName:@"Avenir-Light" size:22.0];
    self.redeemButton.titleLabel.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
    self.healthProviderLabel.font = [UIFont fontWithName:@"Avenir-Light" size:14.0];
    self.healthProviderContentLabel.font = [UIFont fontWithName:@"Avenir-Light" size:22.0];
    self.yourProgressButtonLabel.titleLabel.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
    // Do any additional setup after loading the view from its nib.
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    AppDelegate *appDelegate =[[UIApplication sharedApplication] delegate];
    if (!appDelegate.passedQuiz){
        self.pointsLabel.text = @"$0.00";
    } else {
        self.pointsLabel.text = @"You earned $25.00 from Diabetes Quiz";
    }

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
