//
//  iOS_UIKit_Pan_Gesture_And_Animation_ExampleTests.m
//  iOS UIKit Pan Gesture And Animation ExampleTests
//
//  Created by Alex Tapia on 30/10/22.
//

#import <XCTest/XCTest.h>
#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface iOS_UIKit_Pan_Gesture_And_Animation_ExampleTests : XCTestCase

@end

@implementation iOS_UIKit_Pan_Gesture_And_Animation_ExampleTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)test_viewController_addDraggableView {
  ViewController *sut = [[ViewController alloc] init];
  
  [sut viewDidLoad];
  
  CGRect expectedFrame = CGRectZero;
  expectedFrame.size = [ViewController draggableViewSize];
  UIColor *expectedColor = [ViewController draggableViewColor];
  XCTAssertNotNil(sut.draggableView, "Expected `draggableView` not be nil");
  XCTAssertTrue([sut.draggableView isDescendantOfView:sut.view], "Expected `draggableView` be subview");
  XCTAssertEqual(sut.draggableView.backgroundColor, expectedColor, "Expected %@ `draggableView`s color", expectedColor);
  XCTAssertTrue(CGRectEqualToRect(sut.draggableView.frame, expectedFrame), "Expected %@ `draggableView`s frame", NSStringFromCGRect(expectedFrame));
}

@end
