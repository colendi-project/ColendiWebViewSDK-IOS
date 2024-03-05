
Pod::Spec.new do |s|
  s.name             = 'ColendiWebViewSDK'
  s.version          = '1.1.9'
  s.summary          = 'The Colendi Web View Software Development Kit.'

  s.description      = <<-DESC
  The Colendi Web View is a Software Development Kit developed by Colendians to enable fast and simple integration to Colendi World.
                       DESC

  s.homepage         = 'https://github.com/colendi-project/ColendiWebViewSDK-IOS'
  s.license          = { :type => 'GNU GENERAL PUBLIC LICENSE', :file => 'LICENSE' }
  s.author           = { 'gokberkbar' => 'gokberk.bardakci@colendi.com' }
  s.source           = { :git => 'https://github.com/colendi-project/ColendiWebViewSDK-IOS.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/colendiapp'

  s.swift_version = '4.0'
  s.ios.deployment_target = '12.0'
  
  s.ios.vendored_frameworks = 'ColendiWebViewSDK.xcframework', 'Amani.xcframework'
  s.dependency 'lottie-ios', '4.1.2'
  s.dependency 'OpenSSL-Universal', '~> 1.1.1100'
  
end
