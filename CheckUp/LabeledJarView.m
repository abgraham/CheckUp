//
//  LabeledJarView.m
//  CheckUp
//
//  Created by Annie Graham on 11/19/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "LabeledJarView.h"

@interface LabeledJarView ()

@property (strong, nonatomic) IBOutlet UIView *contentView;

@end

@implementation LabeledJarView

-  (id)initWithFrame:(CGRect)aRect
{
    self = [super initWithFrame:aRect];

    if (self)
    {
        [self customInit];
    }

    return self;
}

- (id)initWithCoder:(NSCoder*)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self customInit];
    }

    return self;
}

- (void)customInit
{
    [[NSBundle mainBundle] loadNibNamed:@"LabeledJarView" owner:self  options:nil];

    [self addSubview:self.contentView];

    self.contentView.frame = self.bounds;

    self.label.font = [UIFont fontWithName:@"Avenir-Light" size:16.0];
}

@end
