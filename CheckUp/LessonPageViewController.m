//
//  LessonPageViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/19/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "LessonsHomeViewController.h"
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
    // For the first page there wont be a page code.
    // This may eventually have to check something in coredata to
    // be able to tell which quiz the user is on.
    if (!self.pageCode){
        self.pageCode = @"1";
    }
    if ([self.pageCode isEqualToString:@"1"]){
    _questionLabel.text = @"Text 1!";
    } else if ([self.pageCode isEqualToString:@"2"]) {
        _questionLabel.text = @"Text 2";
    } else if ([self.pageCode isEqualToString:@"3"]){
        _questionLabel.text = @"Text 3";
    } else if ([self.pageCode isEqualToString:@"4"]) {
        _questionLabel.text = @"Text 4";
    } else if ([self.pageCode isEqualToString:@"5"]) {
        _questionLabel.text = @"Text 5";
    }else if ([self.pageCode isEqualToString:@"6"]) {
        _questionLabel.text = @"Text 6 (Last page)";
        self.nextPageButton.titleLabel.text = @"Done";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextPageButton:(id)sender {
    if ([self.pageCode isEqualToString:@"1"]){
        LessonPageViewController *lessonPageVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
        lessonPageVC.pageCode = @"2";
        [self.navigationController showViewController:lessonPageVC sender:self];
    } else if ([self.pageCode isEqualToString:@"2"]){
        LessonPageViewController *lessonPageVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
        lessonPageVC.pageCode = @"3";
        [self.navigationController showViewController:lessonPageVC sender:self];
    } else if ([self.pageCode isEqualToString:@"3"]){
        LessonPageViewController *lessonPageVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
        lessonPageVC.pageCode = @"4";
        [self.navigationController showViewController:lessonPageVC sender:self];
    } else if ([self.pageCode isEqualToString:@"4"]){
    LessonPageViewController *lessonPageVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
    lessonPageVC.pageCode = @"5";
    [self.navigationController showViewController:lessonPageVC sender:self];
    } else if ([self.pageCode isEqualToString:@"5"]){
        LessonPageViewController *lessonPageVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
        lessonPageVC.pageCode = @"6";
        [self.navigationController showViewController:lessonPageVC sender:self];
    } else if ([self.pageCode isEqualToString:@"6"]){
        // Get back to lessons home
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        LessonsHomeViewController *lessonHomeVC = [storyboard instantiateViewControllerWithIdentifier:@"lessonsHome"];
        [self.navigationController showViewController:lessonHomeVC sender:self];
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
