//
//  JarController.h
//  JarApp
//
//  Created by Jordan Nelson on 3/11/15.
//  Copyright (c) 2015 Jake Herrmann. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JarController : NSObject

@property (nonatomic, strong, readonly) NSArray *jars;

+ (JarController *)sharedInstance;

-(void)addJarWithTitle:(NSString *)title;

@end
