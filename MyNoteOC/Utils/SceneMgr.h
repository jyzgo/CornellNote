//
//  SceneMgr.h
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/3/27.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SceneMgr : NSObject {

}

@property (nonatomic, retain) NSString *someProperty;

+ (id)sharedManager;

-(void) switchScene:(UIViewController*) viewController identifier:(NSString*) identifier;

-(void) popView;

@end
