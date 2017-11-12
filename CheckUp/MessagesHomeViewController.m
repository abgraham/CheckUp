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

@end

@implementation MessagesHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.headerView.label.text = @"Messages";
    NSLog(@"Messages home");
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
