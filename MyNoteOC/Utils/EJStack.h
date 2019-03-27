//
//  EJStack.h
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/3/27.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface EJStack : NSObject <NSFastEnumeration>

@property (nonatomic, assign, readonly) NSUInteger count;

- (id)initWithArray:(NSArray*)array;

- (void)pushObject:(id)object;
- (void)pushObjects:(NSArray*)objects;
- (id)popObject;
- (id)peekObject;

@end
