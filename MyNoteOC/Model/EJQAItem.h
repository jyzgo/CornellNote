//
//  EJQAItem.h
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/4/2.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EJQAItem : NSObject
-(instancetype) initWithDict:(NSDictionary*) dict;

-(NSDictionary*) toDict;
@end
