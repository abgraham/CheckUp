//
//  HeaderView.m
//  CheckUp
//
//  Created by Annie Graham on 11/9/17.
//  Copyright © 2017 Annie Graham. All rights reserved.
//

#import "HeaderView.h"

@interface HeaderView ()
@property (strong, nonatomic) IBOutlet HeaderView *contentView;
@property (weak, nonatomic) IBOutlet UILabel *headerLabel;

@end

@implementation HeaderView


//-(instancetype)initWithCoder:(NSCoder *)aDecoder {
//    self = [super initWithCoder:<#aDecoder#>];
//
//    if (self)
//    {
//        [self customInit];
//    }
//
//    return self;
//}
//
//- (id)initWithFrame:(CGRect)frame
//{
//    [super initWithFrame:<#frame#>];
//    //self = [super initWithFrame:<#frame#>];
//
//    if (self)
//    {
//        [self customInit];
//    }
//
//    return self;
//}

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
    [[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner:self  options:nil];

    [self addSubview:self.contentView];

    self.contentView.frame = self.bounds;

    self.label.font = [UIFont fontWithName:@"Avenir-Light" size:22.0];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
