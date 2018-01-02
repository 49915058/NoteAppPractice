//
//  AppDelegate.h
//  NoteApp
//
//  Created by SSD on 2017/12/30.
//  Copyright © 2017年 classroom. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

