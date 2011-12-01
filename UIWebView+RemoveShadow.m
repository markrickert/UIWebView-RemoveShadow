//
//  UIWebView+RemoveShadows.m
//  SH Calc
//
//  Created by  on 12/1/11.
//  Copyright (c) 2011 Mark Rickert. All rights reserved.
//

#import "UIWebView+RemoveShadow.h"

@implementation UIWebView (RemoveShadow)

-(void) removeShadow
{
	//Remove that dang shadow.from the UIWebView
  for(UIScrollView* webScrollView in [self subviews])
	{
    if ([webScrollView isKindOfClass:[UIScrollView class]])
		{
      for(UIView* subview in [webScrollView subviews])
			{
        if ([subview isKindOfClass:[UIImageView class]])
				{
          ((UIImageView*)subview).image = nil;
          subview.backgroundColor = [UIColor clearColor];
        }
      }
    }
  }
}

-(void) makeTransparent
{
	self.backgroundColor = [UIColor clearColor];
	self.opaque = NO;
}

-(void) makeTransparentAndRemoveShadow
{
	[self makeTransparent];
	[self removeShadow];
}


@end
