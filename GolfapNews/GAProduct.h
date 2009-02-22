//
//  GAProduct.h
//  GolfapNews
//
//  Created by Mark Holton on 2/22/09.
//  Copyright 2009 Albatross-Software.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface GAProduct : NSObject {
  NSString * title;
}

- (id) initWithDictionary:(NSDictionary *) theDictionary;

@property (nonatomic, retain) NSString * title; //nonatomic (no mutex lock, not threadsafe by faster than atomic)
// assign, retain, copy 

@end
