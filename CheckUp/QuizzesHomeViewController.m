//
//  QuizzesHomeViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/9/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "QuizzesHomeViewController.h"
#import "SelectLessonViewController.h"

@interface QuizzesHomeViewController ()

@end

@implementation QuizzesHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Quizzes home");
    SelectLessonViewController *selectLessonVC = [[SelectLessonViewController alloc] initWithNibName: @"SelectLessonViewController" bundle: nil];
    selectLessonVC.lessonsOrQuizzes = @"Quizzes";
    [self.navigationController showViewController:selectLessonVC sender:self];
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
