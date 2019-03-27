//
//  SceneMgr.m
//  MyNoteOC
//
//  Created by Zhenjia LU on 2019/3/27.
//  Copyright © 2019年 Zhenjia LU. All rights reserved.
//

#import "SceneMgr.h"


@interface SceneMgr()
@property(nonatomic,strong) UIStoryboard * mainStoryBoard;
@property(nonatomic,strong) UIViewController *mainViewController;

@property(nonatomic,strong) NSMutableDictionary<NSString*,UIViewController*> *viewDict;
@end

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
    _mainStoryBoard =[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    _viewDict = [NSMutableDictionary dictionaryWithCapacity:4];
    return self;
    
}



-(void) switchScene:(UIViewController*)viewCtrl identifier:(NSString*)identifier
{
    UIViewController* next = _viewDict[identifier];
    if(next == nil)
    {
        NSLog(@"add new controller iden is %@ ",identifier);
    next =[_mainStoryBoard instantiateViewControllerWithIdentifier :identifier];
        [_viewDict setValue:next forKey:identifier];
    }

    [viewCtrl presentViewController:next animated:YES completion:nil];

}

-(void) popView
{
    [self.mainViewController.navigationController popViewControllerAnimated:YES];
}

@end


