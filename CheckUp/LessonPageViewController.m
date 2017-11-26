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
@property (weak, nonatomic) IBOutlet UIImageView *image;

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
    // Sneaky Sugars Module
    if ([self.pageCode isEqualToString:@"1"]){
    _questionLabel.text = @"Whether or not you have diabetes, eating foods with too much sugar is unhealthy. When you eat sugary foods, your blood sugar level increases. Insulin is a chemical that controls your blood sugar levels. Over time, having high blood sugar dulls insulin’s ability to control your blood sugar. ";
    [self.image setImage:[UIImage imageNamed:@"jar1.png"]];
    } else if ([self.pageCode isEqualToString:@"2"]) {
        _questionLabel.text = @"In addition to the obvious culprits like candy, sugars can sneak into other seemingly healthy foods. For example, Fiber one bars have 9g of sugar, while Snickers only have 7g. The first ingredient in Clif bars is brown rice syrup, which is another name for sugar.";
    } else if ([self.pageCode isEqualToString:@"3"]){
        _questionLabel.text = @"Added sugar can be disguised under a variety of different names: some of them are: evaporated cane juice, High fructose corn syrup, dextrose, maltose, rice syrup, sucrose, fructose";
    } else if ([self.pageCode isEqualToString:@"4"]) {
        _questionLabel.text = @"Sugar can often be hiding in breakfast foods like cereal, flavored yogurt, and granola bars. It’s a great idea to avoid starting your day off with a sugary breakfast. Instead, try a plain sugar-free yogurt, eggs, or fruit with natural nut butter.";
    } else if ([self.pageCode isEqualToString:@"5"]) {
        _questionLabel.text = @"Many condiments including ketchup, BBQ sauce, and low-fat salad dressings have added sugar. Find sugar-free alternatives! Plain tomatoes, mustard, and oil and vinegar are all sugar free.";
    }else if ([self.pageCode isEqualToString:@"6"]) {
        _questionLabel.text = @"Congratulations, sugar star!";
        self.nextPageButton.titleLabel.text = @"Done";
    } else if ([self.pageCode isEqualToString:@"7"]) {
        _questionLabel.text = @"We all know that eating well and maintaining a healthy diet can do wonders for your mental acuity, physical energy, and overall health and wellbeing. But what exactly are the components of a healthy diet, and what foods should I be sure to avoid? In this module we’ll learn that there are a number of ways to keep up a healthy diet, and we’ll dive a little bit into what the components of each one are.";
    } else if ([self.pageCode isEqualToString:@"8"]){
        _questionLabel.text = @"A good way to maintain a healthy diet is to keep an eye on portion sizes. Large portions contain higher quantities of carbohydrates, milligrams of fat, and sodium which can all be unhealthy in excess amounts. ";
    } else if ([self.pageCode isEqualToString:@"9"]) {
        _questionLabel.text = @"Another group of foods that are generally unhealthy are refined grains and added sugar. These often have little or no fiber and are stripped of most dietary nutrients. Refined grains are often found in white breads, enriched flour. Added sugars can also be found in soft drinks and candy - check out the Sneaky Sugars module for more. Refined grains and added sugars are unhealthy because they can contribute to weight gain, and foods that contain these ingredient are also often high in fat.";
    } else if ([self.pageCode isEqualToString:@"10"]) {
        _questionLabel.text = @"Instead of reaching for high calorie and high sugar white bread, look for whole wheat and whole grains. At least half of your grains should be whole grains. Whole grains are high in bran and fiber which is excellent for digestion, and they retain most of the natural nutrients found in wheat. ";
    }else if ([self.pageCode isEqualToString:@"11"]) {
        _questionLabel.text = @"Congrats! You’ve learned so much about eating healthy. Check in on the next module to learn more.";
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
    } else if ([self.pageCode isEqualToString:@"7"]){
        LessonPageViewController *lessonPageVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
        lessonPageVC.pageCode = @"8";
        [self.navigationController showViewController:lessonPageVC sender:self];
    } else if ([self.pageCode isEqualToString:@"8"]){
        LessonPageViewController *lessonPageVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
        lessonPageVC.pageCode = @"9";
        [self.navigationController showViewController:lessonPageVC sender:self];
    } else if ([self.pageCode isEqualToString:@"9"]){
        LessonPageViewController *lessonPageVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
        lessonPageVC.pageCode = @"10";
        [self.navigationController showViewController:lessonPageVC sender:self];
    } else if ([self.pageCode isEqualToString:@"10"]){
        LessonPageViewController *lessonPageVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
        lessonPageVC.pageCode = @"11";
        [self.navigationController showViewController:lessonPageVC sender:self];
    } else if ([self.pageCode isEqualToString:@"11"]){
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
