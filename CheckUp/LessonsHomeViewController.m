//
//  LessonsHomeViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/9/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "LessonsHomeViewController.h"
#import "LessonCategoryView.h"
#import "HeaderView.h"

@interface LessonsHomeViewController ()
@property (weak, nonatomic) IBOutlet HeaderView *headerView;
@property (weak, nonatomic) IBOutlet UILabel *instructionsLabel;

@property (weak, nonatomic) IBOutlet LessonCategoryView *category1;
@property (weak, nonatomic) IBOutlet LessonCategoryView *category2;
@property (weak, nonatomic) IBOutlet LessonCategoryView *category3;
@property (weak, nonatomic) IBOutlet LessonCategoryView *category4;


@end

@implementation LessonsHomeViewController
- (IBAction)diabetesPressed:(id)sender {
    NSLog(@"Diabetes Pressed");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"Lessons home");
    self.category1.categoryNameLabel.text = @"Diabetes";
    self.category2.categoryNameLabel.text = @"Hypertension";
    self.category3.categoryNameLabel.text = @"Cancer";
    self.category4.categoryNameLabel.text = @"Lupus";
    self.instructionsLabel.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
    self.headerView.label.font = [UIFont fontWithName:@"Avenir-Light" size:22.0];
    self.category1.categoryNameLabel.font = [UIFont fontWithName:@"Avenir-Black" size:22.0];
    self.category2.categoryNameLabel.font = [UIFont fontWithName:@"Avenir-Black" size:22.0];
    self.category3.categoryNameLabel.font = [UIFont fontWithName:@"Avenir-Black" size:22.0];
    self.category4.categoryNameLabel.font = [UIFont fontWithName:@"Avenir-Black" size:22.0];
    self.category4.dividerView.backgroundColor = [UIColor whiteColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
