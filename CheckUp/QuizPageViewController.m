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
        // SNEAKY SUGARS QUIZ
        _questionLabel.text = @"Which type of condiment does not have added sugar?";
        _answerA.titleLabel.text = @"Low fat apple cider vinaigrette";
        _answerB.titleLabel.text = @"Oil + vinegar, mustard";
        _answerC.titleLabel.text = @"Ketchup";
        _answerD.titleLabel.text = @"BBQ sauce";
    } if ([self.pageCode isEqualToString:@"2"]){
        _questionLabel.text = @"Which of the following is NOT a sneaky sugar?";
        _answerA.titleLabel.text = @"Evaporated cane juice";
        _answerB.titleLabel.text = @"High fructose corn syrup";
        _answerC.titleLabel.text = @"Millet";
        _answerD.titleLabel.text = @"Dextrose";
    } if ([self.pageCode isEqualToString:@"3"]){
        _questionLabel.text = @"What’s a good low-sugar alternative to cereal for breakfast?";
        _answerA.titleLabel.text = @"Low-fat blueberry yogurt";
        _answerB.titleLabel.text = @"Eggs";
        _answerC.titleLabel.text = @"Cinnamon swirl toast";
        _answerD.titleLabel.text = @"Chocolate chip granola bar";
    } if ([self.pageCode isEqualToString:@"4"]){
        // HEALTHY DIET QUIZ
        _questionLabel.text = @"Which foods can contain high amounts of refined grains or added sugar?";
        _answerA.titleLabel.text = @"Whole wheat";
        _answerB.titleLabel.text = @"White Bread";
        _answerC.titleLabel.text = @"Enriched Flour";
        _answerD.titleLabel.text = @"Granola";
    } if ([self.pageCode isEqualToString:@"5"]){
        _questionLabel.text = @"Why are refined grains and added sugar unhealthy?";
        _answerA.titleLabel.text = @"They can lead to myelin building in the brain’s neural pathways which slow down signals in your brain";
        _answerB.titleLabel.text = @"They can contribute to weight gain";
        _answerC.titleLabel.text = @"They can clog your arteries";
        _answerD.titleLabel.text = @"Foods that contain refined grains and added sugar also tend to be high in fat content";
    } else if ([self.pageCode isEqualToString:@"6"]) {
        _questionLabel.text = @"At least how much of your daily grains should be whole grains?";
        _answerA.titleLabel.text = @"12.5%";
        _answerB.titleLabel.text = @"25%";
        _answerC.titleLabel.text = @"50%";
        _answerD.titleLabel.text = @"75%";
    } else if ([self.pageCode isEqualToString:@"7"]) {
        _questionLabel.text = @"Why is it important to avoid large portion sizes?";
        _answerA.titleLabel.text = @"They expand your stomach and make digestion difficult";
        _answerB.titleLabel.text = @"They contain lots of calories and carbohydrates";
        _answerC.titleLabel.text = @"They draw blood from your brain to your stomach";
        _answerD.titleLabel.text = @"They may contain high amounts of fat and sodium";
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
    } if ([self.pageCode isEqualToString:@"6"]) {
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        quizPageVC.pageCode = @"7";
        [self.navigationController showViewController:quizPageVC sender:self];
    } else if ([self.pageCode isEqualToString:@"7"]) {
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
