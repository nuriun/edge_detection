#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint edge_detection.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'edge_detection'
  s.version          = '1.0.7'
  s.summary          = 'Plugin to detect edges of objects'
  s.description      = <<-DESC
Plugin to detect edges of objects
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.resources        = 'Assets/**/*'
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '10.0'
  
  s.subspec 'WeScan' do |wescan|
      wescan.source_files = 'Classes/WeScan/**/*.{h,m}'
  end

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end