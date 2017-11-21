//
//  QuizPageViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/21/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "QuizPageViewController.h"
#import "QuizzesHomeViewController.h"
#import "SelectLessonViewController.h"

@interface QuizPageViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UIButton *answerA;
@property (weak, nonatomic) IBOutlet UIButton *answerB;
@property (weak, nonatomic) IBOutlet UIButton *answerC;
@property (weak, nonatomic) IBOutlet UIButton *answerD;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;

@end

@implementation QuizPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _questionLabel.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
    _answerA.titleLabel.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
    _answerB.titleLabel.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
    _answerC.titleLabel.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
    _answerD.titleLabel.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
    _nextButton.titleLabel.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
    if (!self.pageCode){
        self.pageCode = @"1";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextButtonPressed:(id)sender {
    if ([self.pageCode isEqualToString:@"1"]){
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"2";
        [self.navigationController showViewController:quizPageVC sender:self];
    } else if ([self.pageCode isEqualToString:@"2"]) {
        SelectLessonViewController *selectLessonVC = [[SelectLessonViewController alloc] initWithNibName: @"SelectLessonViewController" bundle: nil];
        selectLessonVC.lessonsOrQuizzes = @"Quizzes";
        [self.navigationController showViewController:selectLessonVC sender:self];
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
