#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint ease_call_kit.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'ease_call_kit'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :git => 'http://XXX/EaseCallKit.git', :tag => s.version.to_s }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.resources = 'Assets/EaseCall.bundle'
  s.public_header_files = 'Classes/**/*.h'
  s.resources = 'Assets/EaseCall.bundle'
  s.dependency 'Flutter'
  s.dependency 'EaseCallKit', :git => 'https://github.com/lixm1988/easecallkitui-ios.git', :branch => 'dev'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end