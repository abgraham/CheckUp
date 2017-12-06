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
#import "AppDelegate.h"

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
        _objectA.label.text = @"Veggie Fun";
        [_objectA.image setImage:[UIImage imageNamed:@"Bigger Berry.png"]];
        _objectB.label.text = @"Whole Grains";
        AppDelegate *appDelegate =[[UIApplication sharedApplication] delegate];
        [_objectB.image setImage:[UIImage imageNamed:@"Bigger Berry.png"]];
        _objectC.label.text = @"Healthy Diet";
        if (!appDelegate.hasTakenHealthyDietLesson){
            [_objectC.image setImage:[UIImage imageNamed:@"Berry (Grey).png"]];
        } else {
            [_objectC.image setImage:[UIImage imageNamed:@"Bigger Berry.png"]];
        }
        _objectD.label.text = @"Sneaky Sugars";
        if (!appDelegate.hasTakenSugarLesson){
            [_objectD.image setImage:[UIImage imageNamed:@"Berry (Grey).png"]];
        } else {
            [_objectD.image setImage:[UIImage imageNamed:@"Bigger Berry.png"]];
        }
    }
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)backButtonPressed:(id)sender {
    if ([self.lessonsOrQuizzes isEqualToString:@"Lessons"]){
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        LessonsHomeViewController *lessonHomeVC = [storyboard instantiateViewControllerWithIdentifier:@"lessonsHome"];
        [self.navigationController showViewController:lessonHomeVC sender:self];
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if ([self.lessonsOrQuizzes isEqualToString:@"Quizzes"]){
        AppDelegate *appDelegate =[[UIApplication sharedApplication] delegate];
        [self.objectA.image setImage:[UIImage imageNamed:@"Jar Icon 3_5.png"]];
        int lessonsCompleted = 0;
        if (appDelegate.hasTakenSugarLesson) lessonsCompleted += 1;
        if (appDelegate.hasTakenHealthyDietLesson) lessonsCompleted += 1;
        // Set the number of berries filled in jar based on the number of lessons completed
        switch (lessonsCompleted){
            case 0:
                [self.objectA.image setImage:[UIImage imageNamed:@"Jar Icon 3_5.png"]];
                break;
            case 1:
                [self.objectA.image setImage:[UIImage imageNamed:@"Jar Icon 4-5.png"]];
                break;
            case 2:
                [self.objectA.image setImage:[UIImage imageNamed:@"Jar Icon 5_5.png"]];
                break;
            default:
                break;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showNoContentAlert {
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:@"Content Unavailable"
                                  message:@"This content has not been added to CheckUp yet."
                                  preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:@"OK"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             //Do some thing here
                             [self dismissViewControllerAnimated:YES completion:nil];

                         }];
    [alert addAction:ok];

    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)berry1Pressed:(id)sender {
    //SelectLessonViewController *lessonVC = [[SelectLessonViewController alloc] initWithNibName: @"LessonViewController" bundle: nil];
    //[self.navigationController showViewController:lessonVC sender:self];


//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"LessonStoryboard" bundle:nil];
//    UIViewController *myVC = [storyboard instantiateViewControllerWithIdentifier:@"FirstVC"];
//    [self.navigationController showViewController:myVC sender:self];

    if ([self.lessonsOrQuizzes
        isEqualToString:@"Lessons"]){
        [self showNoContentAlert];
    } else {
        // Go to quiz pages IF you've completed both modules
        AppDelegate *appDelegate =[[UIApplication sharedApplication] delegate];
        //if (appDelegate.hasTakenSugarLesson && appDelegate.hasTakenHealthyDietLesson){
            QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
            quizPageVC.pageCode = @"0";
            [self.navigationController showViewController:quizPageVC sender:self];
        /*} else {
            // Alert explains they need to complete lessons to access the quiz.
            UIAlertController * alert=   [UIAlertController
                                          alertControllerWithTitle:@"Lessons Incomplete"
                                          message:@"You must complete all the diabetes lessons to access the quiz."
                                          preferredStyle:UIAlertControllerStyleAlert];

            UIAlertAction* ok = [UIAlertAction
                                 actionWithTitle:@"OK"
                                 style:UIAlertActionStyleDefault
                                 handler:^(UIAlertAction * action)
                                 {
                                     //Do some thing here
                                     [self dismissViewControllerAnimated:YES completion:nil];

                                 }];
            [alert addAction:ok];

            [self presentViewController:alert animated:YES completion:nil];
        }*/
    }
}

- (IBAction)berry2Pressed:(id)sender {
    [self showNoContentAlert];
//    if ([self.lessonsOrQuizzes
//         isEqualToString:@"Lessons"]){
//        [self showNoContentAlert];
//    } else {
//        // Go to quiz pages
//        QuizPageViewController *quizPageVC = [[QuizPageViewController alloc] initWithNibName: @"QuizPageViewController" bundle: nil];
//        quizPageVC.pageCode = @"4";
//        [self.navigationController showViewController:quizPageVC sender:self];
//    }
}

- (IBAction)berry4Pressed:(id)sender {
    if ([self.lessonsOrQuizzes
         isEqualToString:@"Lessons"]){
        // Go to lessons pages
        LessonPageViewController *lessonPageVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
        lessonPageVC.pageCode = @"1";
        [self.navigationController showViewController:lessonPageVC sender:self];
    } else {
        [self showNoContentAlert];
    }
}

- (IBAction)lessonBerry3Pressed:(id)sender {
    if ([self.lessonsOrQuizzes
         isEqualToString:@"Lessons"]){
        // Go to lessons pages
        LessonPageViewController *lessonPageVC = [[LessonPageViewController alloc] initWithNibName: @"LessonPageViewController" bundle: nil];
        lessonPageVC.pageCode = @"7";
        [self.navigationController showViewController:lessonPageVC sender:self];
    } else {
        [self showNoContentAlert];
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
