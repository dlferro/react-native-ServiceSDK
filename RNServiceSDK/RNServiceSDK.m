
#import "RNServiceSDK.h"

@import ServiceCore;
@import ServiceCases;
@import ServiceChat;
@import ServiceKnowledge;
@import ServiceSOS;

@implementation RNServiceSDK

- (dispatch_queue_t)methodQueue {
    return dispatch_get_main_queue();
}

RCT_EXPORT_MODULE();

#pragma mark -
#pragma mark Cases

RCT_EXPORT_METHOD(setCasesInterfaceVisible:(BOOL)visible
                  animted:(BOOL)animated) {
    [[SCServiceCloud sharedInstance].cases setInterfaceVisible:visible animated:animated completion:nil];
}

#pragma mark -
#pragma mark Chat

RCT_REMAP_METHOD(launchChat,
                 liveAgentPod:(NSString *_Nonnull)liveAgentPod
                 orgId:(NSString *_Nonnull)orgId
                 deploymentId:(NSString *_Nonnull)deploymentId
                 buttonId:(NSString *_Nonnull)buttonId) {
    SCSChatConfiguration *config = [[SCSChatConfiguration alloc] initWithLiveAgentPod:liveAgentPod
                                                                                orgId:orgId
                                                                         deploymentId:deploymentId
                                                                             buttonId:buttonId];
    [config setPresentationStyle:SCSChatPresentationStyleFullscreen];
    
    [[SCServiceCloud sharedInstance].chat startSessionWithConfiguration:config];
}

#pragma mark -
#pragma mark Knowledge

RCT_EXPORT_METHOD(setKnowedgeInterfaceVisible:(BOOL)visible
                  animted:(BOOL)animated) {
    [[SCServiceCloud sharedInstance].knowledge setInterfaceVisible:visible animated:animated completion:nil];
}

#pragma mark -
#pragma mark SOS

RCT_REMAP_METHOD(launchSOS,
                 liveAgentPod:(NSString *_Nonnull)liveAgentPod
                 orgId:(NSString *_Nonnull)orgId
                 deploymentId:(NSString *_Nonnull)deploymentId) {
    SOSOptions *options = [SOSOptions optionsWithLiveAgentPod:liveAgentPod orgId:orgId deploymentId:deploymentId];
    options.featureClientFrontCameraEnabled = true;
    options.featureClientBackCameraEnabled = true;
    options.featureClientScreenSharingEnabled = true;
    options.featureAgentVideoStreamEnabled = true;
    
    [[SCServiceCloud sharedInstance].sos startSessionWithOptions:options];
}

@end
