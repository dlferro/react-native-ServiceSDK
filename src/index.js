
import { NativeModules } from 'react-native';

const { RNServiceSDK } = NativeModules;

class ServiceSDK {
  static setCasesInterfaceVisible(visible, animated = false) {
    return RNServiceSDK.setCasesInterfaceVisible(visible, animated);
  }

  static launchChat(liveAgentPod, orgId, deploymentId, buttonId) {
    return RNServiceSDK.launchChat(liveAgentPod, orgId, deploymentId, buttonId);
  }

  static setKnowedgeInterfaceVisible(visible, animated = false) {
    return RNServiceSDK.setKnowedgeInterfaceVisible(visible, animated);
  }

  static launchSOS(liveAgentPod, orgId, deploymentId, buttonId) {
    return RNServiceSDK.launchChat(liveAgentPod, orgId, deploymentId, buttonId);
  }
}

export default ServiceSDK;
