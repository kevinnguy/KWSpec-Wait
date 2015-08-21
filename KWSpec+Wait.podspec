Pod::Spec.new do |s|
  s.name             = "KWSpec+Wait"
  s.version          = "1.0.0"
  s.summary          = "Delay execution of Kiwi specs until an asynchronous process finishes."
  s.homepage         = "https://github.com/kevinnguy/KWSpec-Wait"
  s.license          = 'MIT'
  s.authors          = { 'Kevin Nguy' => 'kevnguy@gmail.com' }
  s.source           = { :git => "https://github.com/kevinnguy/KWSpec-Wait.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/kevnguy'

  s.platform     = :ios
  s.ios.deployment_target = '7.0'

  s.source_files = 'Classes'

  s.dependency 'Kiwi'
end