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
@property int answerSelected;

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
    [self setUpContent];
}

- (void)setUpContent {
    if ([self.pageCode isEqualToString:@"1"]){
        _questionLabel.text = @"Question 1";
    } if ([self.pageCode isEqualToString:@"2"]){
        _questionLabel.text = @"Question 2";
    } if ([self.pageCode isEqualToString:@"3"]){
        _questionLabel.text = @"Question 3";
    } if ([self.pageCode isEqualToString:@"4"]){
        _questionLabel.text = @"Question 4";
    } if ([self.pageCode isEqualToString:@"5"]){
        _questionLabel.text = @"Question 5";
    } else if ([self.pageCode isEqualToString:@"6"]) {
        _questionLabel.text = @"Question 6 (last Q)";
        _nextButton.titleLabel.text = @"Done";
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
    } if ([self.pageCode isEqualToString:@"2"]){
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"3";
        [self.navigationController showViewController:quizPageVC sender:self];
    } if ([self.pageCode isEqualToString:@"3"]){
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"4";
        [self.navigationController showViewController:quizPageVC sender:self];
    } if ([self.pageCode isEqualToString:@"4"]){
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"5";
        [self.navigationController showViewController:quizPageVC sender:self];
    } if ([self.pageCode isEqualToString:@"5"]){
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"6";
        [self.navigationController showViewController:quizPageVC sender:self];
    } else if ([self.pageCode isEqualToString:@"6"]) {
        // Direct back to quiz home
        SelectLessonViewController *selectLessonVC = [[SelectLessonViewController alloc] initWithNibName: @"SelectLessonViewController" bundle: nil];
        selectLessonVC.lessonsOrQuizzes = @"Quizzes";
        [self.navigationController showViewController:selectLessonVC sender:self];
    }
}

- (void)resetButtonTextColors {
    _answerA.titleLabel.textColor = [UIColor blackColor];
    _answerB.titleLabel.textColor = [UIColor blackColor];
    _answerC.titleLabel.textColor = [UIColor blackColor];
    _answerD.titleLabel.textColor = [UIColor blackColor];
}

- (IBAction)answerAPressed:(id)sender {
    [self resetButtonTextColors];
    [_answerA setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    _answerSelected = 1;
}

- (IBAction)answerBPressed:(id)sender {
    [self resetButtonTextColors];
    [_answerB setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    _answerSelected = 2;
}

- (IBAction)answerCPressed:(id)sender {
    [self resetButtonTextColors];
    [_answerC setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    _answerSelected = 3;
}

- (IBAction)answerDPressed:(id)sender {
    [self resetButtonTextColors];
    [_answerD setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    _answerSelected = 4;
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
