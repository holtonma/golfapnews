//
//  SyntaxTest.m
//  GolfapNews
//
//  Created by Mark Holton on 2/22/09.
//  Copyright 2009 Albatross-Software.com. All rights reserved.
//

#import "SyntaxTest.h"


@implementation SyntaxTest

- (void) testTrue
{
  STAssertTrue(YES, @"Message will be shown on failure"); 
}

- (void) testString
{
  NSString * myString = @"Bacon";
  STAssertEqualObjects(myString, @"Bacon", @"Got '%@'", myString);
  STAssertEqualObjects(myString.className, @"NSCFString", @"String expected");
}

- (void) testObjectCreation
{
  NSMutableString * myString = [NSMutableString new];
  int count = [myString retainCount];
  STAssertEquals(count, 1, nil);
  
  NSDictionary * myDictionary = [[NSDictionary alloc] init];
  STAssertEquals((int)[myDictionary count], 0, nil);
  
  NSNumber * myNumber = [NSNumber numberWithInt:42];
  STAssertEqualsWithAccuracy((int)[myNumber intValue], 37, 5, nil);
  
  [myString release];
  [myDictionary release];
}
    

@end
