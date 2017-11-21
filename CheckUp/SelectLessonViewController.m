//
//  SelectLessonViewController.m
//  CheckUp
//
//  Created by Annie Graham on 11/19/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "SelectLessonViewController.h"
#import "LessonPageViewController.h"
#import "QuizPageViewController.h"
#import "LessonsHomeViewController.h"
#import "LabeledJarView.h"

@interface SelectLessonViewController ()
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet LabeledJarView *objectA;
@property (weak, nonatomic) IBOutlet LabeledJarView *objectB;
@property (weak, nonatomic) IBOutlet LabeledJarView *objectC;
@property (weak, nonatomic) IBOutlet LabeledJarView *objectD;


@end

@implementation SelectLessonViewController

- (void)viewDidLoad {
    NSLog(@"Select Lesson View");
    [super viewDidLoad];
    _backButton.titleLabel.font = [UIFont fontWithName:@"Avenir-Light" size:14.0];
    if ([self.lessonsOrQuizzes isEqualToString:@"Quizzes"]){
        // Set up the view for quizzes
        _backButton.hidden = YES;
        _objectA.label.text = @"Diabetes";
        [_objectA.image setImage:[UIImage imageNamed:@"QuizJarA.png"]];
        _objectB.label.text = @"Hypertension";
        [_objectB.image setImage:[UIImage imageNamed:@"QuizJarB.png"]];
        _objectC.label.text = @"Cancer";
        [_objectC.image setImage:[UIImage imageNamed:@"QuizJarC.png"]];
        _objectD.label.text = @"Lupus";
        [_objectD.image setImage:[UIImage imageNamed:@"QuizJarD.png"]];
    } else {
        // Set up the view for lessons
        _objectA.label.text = @"Sneaky Sugars";
        [_objectA.image setImage:[UIImage imageNamed:@"LongCompleteBerry.png"]];
        _objectB.label.text = @"Grocery Tour";
        [_objectB.image setImage:[UIImage imageNamed:@"LongCompleteBerry.png"]];
        _objectC.label.text = @"Healthy Grains";
        [_objectC.image setImage:[UIImage imageNamed:@"LongCompleteBerry.png"]];
        _objectD.label.text = @"Veggie Fun";
        [_objectD.image setImage:[UIImage imageNamed:@"LongIncompleteBerry.png"]];
    }
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)berry1Pressed:(id)sender {
    //SelectLessonViewController *lessonVC = [[SelectLessonViewController alloc] initWithNibName: @"LessonViewController" bundle: nil];
    //[self.navigationController showViewController:lessonVC sender:self];


//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"LessonStoryboard" bundle:nil];
//    UIViewController *myVC = [storyboard instantiateViewControllerWithIdentifier:@"FirstVC"];
//    [self.navigationController showViewController:myVC sender:self];

    if ([self.lessonsOrQuizzes
        isEqualToString:@"Lessons"]){
        // Do nothing--this module is
        // complete.
    } else {
        // Go to quiz pages
        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
        [self.navigationController showViewController:quizPageVC sender:self];
    }
}

- (IBAction)berry4Pressed:(id)sender {
    if ([self.lessonsOrQuizzes
         isEqualToString:@"Lessons"]){
        // Go to lessons pages
        LessonPageViewController *lessonPageVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
        [self.navigationController showViewController:lessonPageVC sender:self];
    }
}


- (IBAction)backButtonPressed:(id)sender {
    if ([self.lessonsOrQuizzes isEqualToString:@"Lessons"]){
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
