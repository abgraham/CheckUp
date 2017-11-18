//
//  MessagesHomeViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/9/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "MessagesHomeViewController.h"
#import "HeaderView.h"
#import "LessonsHomeViewController.h"

@interface MessagesHomeViewController ()
@property (weak, nonatomic) IBOutlet HeaderView *headerView;
@property (weak, nonatomic) IBOutlet UIButton *lessonsButton;
@property (weak, nonatomic) IBOutlet UILabel *lessonsTitle;
@property (weak, nonatomic) IBOutlet UILabel *lessonsSubtitle;

@end

@implementation MessagesHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.headerView.label.text = @"Messages";
    NSLog(@"Messages home");
    self.lessonsTitle.font = [UIFont fontWithName:@"Avenir-Black" size:22.0];
    self.lessonsSubtitle.font = [UIFont fontWithName:@"Avenir-Light" size:14.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)lessonsPressed:(id)sender {
    self.tabBarController.selectedIndex = 1;
}
- (IBAction)quizzesPressed:(id)sender {
    self.tabBarController.selectedIndex = 2;
}

- (IBAction)redeemPressed:(id)sender {
    self.tabBarController.selectedIndex = 3;
}


@end
