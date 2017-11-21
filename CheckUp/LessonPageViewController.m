//
//  LessonPageViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/19/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "LessonPageViewController.h"
#import "HeaderView.h"

@interface LessonPageViewController ()

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet HeaderView *header;

@property (weak, nonatomic) IBOutlet UIButton *nextPageButton;

@end

@implementation LessonPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.header.label.text = @"Lesson";
    self.questionLabel.font =  [UIFont fontWithName:@"Avenir-Light" size:14.0];
    self.nextPageButton.titleLabel.font =  [UIFont fontWithName:@"Avenir-Light" size:14.0];
    if (!self.pageCode){
        self.pageCode = @"1";
    }
    if ([self.pageCode isEqualToString:@"1"]){
    _questionLabel.text = @"Yes I want to be healthy!";
    } else if ([self.pageCode isEqualToString:@"2"]) {
        _questionLabel.text = @"No thanks.";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextPageButton:(id)sender {
    if ([self.pageCode isEqualToString:@"1"]){
        self.pageCode = @"2";
    } else {
    LessonPageViewController *lessonPageVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
    lessonPageVC.pageCode = self.pageCode;
    [self.navigationController showViewController:lessonPageVC sender:self];
    }

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
