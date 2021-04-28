Pod::Spec.new do |s|
  s.name         = 'LNGNavigationBar'
  s.version      = '0.0.3'
  s.summary      = '基于UIView的导航栏'
  s.homepage     = 'https://github.com/sunmumu/LNGNavigationBar'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'sunmumu' => '335089101@qq.com' }
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '11.0'
  s.requires_arc = true
  s.swift_version = '4.0', '4.1', '4.2','5.0', '5.1', '5.2', '5.3'
  
  s.source       = { :git => 'https://github.com/sunmumu/LNGNavigationBar', :tag => s.version.to_s }
  s.source_files = 'LNGNavigationBar/**/*.swift'
  s.libraries = 'z'
  s.frameworks = 'UIKit', 'CoreFoundation'
  s.dependency 'SnapKit'

end