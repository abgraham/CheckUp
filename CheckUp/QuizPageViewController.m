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
#import "AppDelegate.h"

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
        // SNEAKY SUGARS QUIZ
        // initialize quizScore to zero.
        AppDelegate *appDelegate =[[UIApplication sharedApplication] delegate];
        appDelegate.quizScore = 0;
        _questionLabel.text = @"Q1/7. Which type of condiment does not have added sugar?";
        [_answerA setTitle:@"Low fat apple cider vinaigrette" forState:UIControlStateNormal];
        [_answerB setTitle:@"Oil + vinegar, mustard" forState:UIControlStateNormal];
        [_answerC setTitle:@"Ketchup" forState:UIControlStateNormal];
        [_answerD setTitle:@"BBQ sauce" forState:UIControlStateNormal];
    } if ([self.pageCode isEqualToString:@"2"]){
        _questionLabel.text = @"Q2/7. Which of the following is NOT a sneaky sugar?";
        [_answerA setTitle:@"Evaporated cane juice" forState:UIControlStateNormal];
        [_answerB setTitle:@"High fructose corn syrup" forState:UIControlStateNormal];
        [_answerC setTitle:@"Millet" forState:UIControlStateNormal];
        [_answerD setTitle:@"Dextrose" forState:UIControlStateNormal];
    } if ([self.pageCode isEqualToString:@"3"]){
        _questionLabel.text = @"Q3/7. What’s a good low-sugar alternative to cereal for breakfast?";
        [_answerA setTitle:@"Eggs" forState:UIControlStateNormal];
        [_answerB setTitle:@"Cinnamon" forState:UIControlStateNormal];
        [_answerC setTitle:@"Chocolate chip granola bar" forState:UIControlStateNormal];
        [_answerD setTitle:@"Low-fat blueberry yogurt" forState:UIControlStateNormal];
        [_nextButton setTitle:@"Done" forState:UIControlStateNormal];
    } if ([self.pageCode isEqualToString:@"4"]){
        // HEALTHY DIET QUIZ
        _questionLabel.text = @"Q4/7. Which foods can contain high amounts of refined grains or added sugar?";
        [_answerA setTitle:@"Whole wheat" forState:UIControlStateNormal];
        [_answerB setTitle:@"White Bread" forState:UIControlStateNormal];
        [_answerC setTitle:@"Enriched Flour" forState:UIControlStateNormal];
        [_answerD setTitle:@"Granola" forState:UIControlStateNormal];
    } if ([self.pageCode isEqualToString:@"5"]){
        _questionLabel.text = @"Q5/7. Why are refined grains and added sugar unhealthy?";
        [_answerA setTitle:@"They can slow down brain signals" forState:UIControlStateNormal];
        [_answerB setTitle:@"They can contribute to weight gain" forState:UIControlStateNormal];
        [_answerC setTitle:@"They can clog your arteries" forState:UIControlStateNormal];
        [_answerD setTitle:@"" forState:UIControlStateNormal];
    } else if ([self.pageCode isEqualToString:@"6"]) {
        _questionLabel.text = @"Q6/7. At least how much of your daily grains should be whole grains?";
        [_answerA setTitle:@"12.5%" forState:UIControlStateNormal];
        [_answerB setTitle:@"25%" forState:UIControlStateNormal];
        [_answerC setTitle:@"50%" forState:UIControlStateNormal];
        [_answerD setTitle:@"75%" forState:UIControlStateNormal];
    } else if ([self.pageCode isEqualToString:@"7"]) {
        _questionLabel.text = @"Q7/7. Why is it important to avoid large portion sizes?";
        [_answerA setTitle:@"They expand your stomach" forState:UIControlStateNormal];
        [_answerB setTitle:@"They contain lots of calories" forState:UIControlStateNormal];
        [_answerC setTitle:@"They draw blood from your brain" forState:UIControlStateNormal];
        [_answerD setTitle:@"They create digestive issues" forState:UIControlStateNormal];
    } else if ([self.pageCode isEqualToString:@"8"]) {
        AppDelegate *appDelegate =[[UIApplication sharedApplication] delegate];
        if (appDelegate.quizScore >= 5){
            // The user passed the quiz
            _questionLabel.text = @"Congratulations, you passed the quiz! Redeem the $25.00 you earned by going to your Profile.";
            [_answerA setTitle:@"" forState:UIControlStateNormal];
            [_answerB setTitle:@"" forState:UIControlStateNormal];
            [_answerC setTitle:@"" forState:UIControlStateNormal];
            [_answerD setTitle:@"" forState:UIControlStateNormal];
            appDelegate.passedQuiz = YES;
        } else {
            _questionLabel.text = @"Uh oh, you didn't pass this time. You'll have to take the quiz again!";
            [_answerA setTitle:[NSString stringWithFormat:@"You got %ld of 8", appDelegate.quizScore] forState:UIControlStateNormal];
            [_answerB setTitle:@"You need 5 of 8 to pass" forState:UIControlStateNormal];
            [_answerC setTitle:@"Review the Sneaky Sugar module," forState:UIControlStateNormal];
            [_answerD setTitle:@"and try again." forState:UIControlStateNormal];
        }
        [_nextButton setTitle:@"Done" forState:UIControlStateNormal];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButtonPressed:(id)sender {
    if ([self.pageCode isEqualToString:@"1"]){
        // Direct back to quiz home
        SelectLessonViewController *selectLessonVC = [[SelectLessonViewController alloc] initWithNibName: @"SelectLessonViewController" bundle: nil];
        selectLessonVC.lessonsOrQuizzes = @"Quizzes";
        [self.navigationController showViewController:selectLessonVC sender:self];
    } if ([self.pageCode isEqualToString:@"2"]){
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"1";
        [self.navigationController showViewController:quizPageVC sender:self];
    } if ([self.pageCode isEqualToString:@"3"]){
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"2";
        [self.navigationController showViewController:quizPageVC sender:self];
    } if ([self.pageCode isEqualToString:@"4"]){
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"3";
        [self.navigationController showViewController:quizPageVC sender:self];
    } if ([self.pageCode isEqualToString:@"5"]){
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"4";
        [self.navigationController showViewController:quizPageVC sender:self];
    } if ([self.pageCode isEqualToString:@"6"]) {
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"5";
        [self.navigationController showViewController:quizPageVC sender:self];
    } if ([self.pageCode isEqualToString:@"7"]) {
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"6";
        [self.navigationController showViewController:quizPageVC sender:self];
    } else if ([self.pageCode isEqualToString:@"8"]) {
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"7";
        [self.navigationController showViewController:quizPageVC sender:self];
    }
}

- (IBAction)nextButtonPressed:(id)sender {
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    if ([self.pageCode isEqualToString:@"1"]){
        appDelegate.quizScore = 0;
        if ([_answerB.titleLabel.textColor isEqual:[UIColor greenColor]]){
            appDelegate.quizScore += 1;
        }
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"2";
        [self.navigationController showViewController:quizPageVC sender:self];
    } if ([self.pageCode isEqualToString:@"2"]){
        if ([_answerC.titleLabel.textColor isEqual:[UIColor greenColor]]){
            appDelegate.quizScore += 1;
        }
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"3";
        [self.navigationController showViewController:quizPageVC sender:self];
    } if ([self.pageCode isEqualToString:@"3"]){
        if ([_answerA.titleLabel.textColor isEqual:[UIColor greenColor]]){
            appDelegate.quizScore += 1;
        }
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"4";
        [self.navigationController showViewController:quizPageVC sender:self];
    } if ([self.pageCode isEqualToString:@"4"]){
        if ([_answerD.titleLabel.textColor isEqual:[UIColor greenColor]]){
            appDelegate.quizScore += 1;
        }
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"5";
        [self.navigationController showViewController:quizPageVC sender:self];
    } if ([self.pageCode isEqualToString:@"5"]){
        if ([_answerB.titleLabel.textColor isEqual:[UIColor greenColor]]){
            appDelegate.quizScore += 1;
        }
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"6";
        [self.navigationController showViewController:quizPageVC sender:self];
    } if ([self.pageCode isEqualToString:@"6"]) {
        if ([_answerC.titleLabel.textColor isEqual:[UIColor greenColor]]){
            appDelegate.quizScore += 1;
        }
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"7";
        [self.navigationController showViewController:quizPageVC sender:self];
    } if ([self.pageCode isEqualToString:@"7"]) {
        if ([_answerB.titleLabel.textColor isEqual:[UIColor greenColor]]){
            appDelegate.quizScore += 1;
        }
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"8";
        [self.navigationController showViewController:quizPageVC sender:self];
    } else if ([self.pageCode isEqualToString:@"8"]) {
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
