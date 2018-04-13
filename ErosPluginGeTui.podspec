# coding: utf-8
Pod::Spec.new do |s|
  s.name         = "ErosPluginGeTui"
  s.version      = "0.0.1"
  s.summary      = "ErosPluginAmap Source ."
  s.homepage     = 'https://github.com/bmfe/eros-plugin-ios-getui'
  s.license      = "MIT"
  s.authors      = { "xionghuayu" => "18601949015@163.com" }
  s.platform     = :ios
  s.ios.deployment_target = "8.0"
  s.source = { :git => 'https://github.com/bmfe/eros-plugin-ios-getui.git', :tag => s.version.to_s }

  s.user_target_xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) BM_PUSH=1' }
  s.source_files = "Source/*.{h,m,mm}"
  # s.resources = 'Resources/*'

  s.requires_arc = true
  s.dependency 'GTSDK', '2.2.0.0-noidfa'
end