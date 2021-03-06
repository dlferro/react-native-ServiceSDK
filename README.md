
# react-native-react-native-service-sdk

## Getting started

`$ npm install react-native-react-native-service-sdk --save`

### Mostly automatic installation

`$ react-native link react-native-react-native-service-sdk`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-react-native-service-sdk` and add `RNServiceSDK.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNServiceSDK.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.danielferro.RNServiceSDKPackage;` to the imports at the top of the file
  - Add `new RNServiceSDKPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-react-native-service-sdk'
  	project(':react-native-react-native-service-sdk').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-react-native-service-sdk/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-react-native-service-sdk')
  	```


## Usage
```javascript
import RNServiceSDK from 'react-native-react-native-service-sdk';

// TODO: What to do with the module?
RNServiceSDK;
```
