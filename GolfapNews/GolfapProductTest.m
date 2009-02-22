//
//  GolfapProductTest.m
//  GolfapNews
//
//  Created by Mark Holton on 2/22/09.
//  Copyright 2009 Golfap.com. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "GAProduct.h" 
//testing an external class

@interface GAProductTest : SenTestCase {
  GAProduct * product;
}
@end


@implementation GAProductTest

- (void) setUp
{
  NSDictionary * dictionary =
    [NSDictionary dictionaryWithObjectsAndKeys:
     @"Haml and Sass", @"title", 
     @"http://peepcode.com/products/haml-and-sass", @"url",
     nil];
  
  product = [[GAProduct alloc] initWithDictionary:dictionary]; 
}

- (void) testObjectType
{
  STAssertEqualObjects(product.className, @"GAProduct", nil);
}

- (void) testAttributes
{
  STAssertEqualObjects(product.title, @"Haml and Sass", nil);
}

- (void) tearDown
{
  [product release];
}

@end
