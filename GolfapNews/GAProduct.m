//
//  GAProduct.m
//  GolfapNews
//
//  Created by Mark Holton on 2/22/09.
//  Copyright 2009 Albatross-Software.com. All rights reserved.
//

#import "GAProduct.h"


@implementation GAProduct

@synthesize title, url;


- (id) initWithDictionary:(NSDictionary *) theDictionary
{
  if (self = [super init]) {
    self.title = [theDictionary objectForKey:@"title"];
    //return nil;  //super init -- returns parent of init, which is NSObject
    self.url = [NSURL URLWithString:[theDictionary objectForKey:@"url"]];
  }
    
  return self;
}


@end
