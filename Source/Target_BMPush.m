//
//  Target_BMPush.m
//  ErosPluginGeTui
//
//  Created by XHY on 2018/4/24.
//

#import "Target_BMPush.h"
#import "BMPushMessageManager.h"

@implementation Target_BMPush

- (void)Action_registerForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    [BMPushMessageManager registerForRemoteNotificationsWithDeviceToken:deviceToken];
}

- (void)Action_setIsLaunchedByNotification:(NSNumber *)val
{
    [[BMPushMessageManager shareInstance] setIsLaunchedByNotification:[val boolValue]];
}

- (void)Action_addPushNotification:(NSDictionary *)notificationPayload
{
    [BMPushMessageManager addPushNotification:notificationPayload];
}

- (void)Action_receiveRemoteNotification:(NSDictionary *)info
{
    [BMPushMessageManager receiveRemoteNotification:info[@"userInfo"] fetchCompletionHandler:info[@"block"]];
}

- (void)Action_performFetchWithCompletionHandler:(NSDictionary *)info
{
    [BMPushMessageManager performFetchWithCompletionHandler:info[@"block"]];
}

@end
