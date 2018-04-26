//
//  Target_BMPush.h
//  ErosPluginGeTui
//
//  Created by XHY on 2018/4/24.
//

#import <Foundation/Foundation.h>

@interface Target_BMPush : NSObject

- (void)Action_registerForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken;
- (void)Action_setIsLaunchedByNotification:(NSNumber *)val;
- (void)Action_addPushNotification:(NSDictionary *)notificationPayload;
- (void)Action_receiveRemoteNotification:(NSDictionary *)info;
- (void)Action_performFetchWithCompletionHandler:(NSDictionary *)info;

@end
