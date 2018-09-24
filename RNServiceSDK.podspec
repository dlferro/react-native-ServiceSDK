
require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name             = "RNServiceSDK"
  s.version          = pjson["version"]
  s.summary          = pjson["description"]
  s.requires_arc     = true
  s.author           = { 'Daniel Ferro' => 'dlcerva@gmail.com' }
  s.license          = pjson["license"]
  s.homepage         = 'https://github.com/dlferro/react-native-ServiceSDK'
  s.source           = { :git => "https://github.com/dlferro/react-native-ServiceSDK.git" }
  s.source_files     = 'RNServiceCloudSDK/*'
  s.platform         = :ios, "9.0"
  s.dependency 'ServiceSDK'
  s.dependency 'React'
end
