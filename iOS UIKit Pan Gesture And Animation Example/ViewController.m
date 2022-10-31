//
//  ViewController.m
//  iOS UIKit Pan Gesture And Animation Example
//
//  Created by Alex Tapia on 30/10/22.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  [self setUpAndAddDraggableView];
}

#pragma mark - Private Methods

- (void)setUpAndAddDraggableView {
  CGRect draggableViewFrame = CGRectZero;
  draggableViewFrame.size = [ViewController draggableViewSize];
  _draggableView = [[UIView alloc] initWithFrame:draggableViewFrame];
  [_draggableView setBackgroundColor:[ViewController draggableViewColor]];
  [self.view addSubview:_draggableView];
}

#pragma mark - Public Class Methods

+ (UIColor *)draggableViewColor {
  return UIColor.blueColor;
}

+ (CGSize)draggableViewSize {
  return CGSizeMake(100, 100);
}


@end
