//
//  SceneMgr.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/3/27.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "SceneMgr.h"


@implementation SceneMgr


+ (id)sharedManager {
    static SceneMgr *sharedMyManager = nil;
    @synchronized(self) {
        if (sharedMyManager == nil)
            sharedMyManager = [[self alloc] init];
    }
    return sharedMyManager;
}

-(instancetype) init{
    self = [super init];
    
    return self;
    
}



-(void) switchScene:(UIViewController*)viewCtrl identifier:(NSString*)identifier
{
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController* vc =[mainStoryBoard instantiateViewControllerWithIdentifier :identifier];
    [viewCtrl presentViewController:vc animated:YES completion:nil];
}

@end


