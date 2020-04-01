#
# Be sure to run `pod lib lint XouDevSpec.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XouDevSpec'
  s.version          = '0.1.0'
  s.summary          = 'A short description of XouDevSpec.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'git@github.com:XanderSchoeman/XouDevSpec'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'XanderSchoeman' => 'Xschoeman@jhb.dvt.co.za' }
  s.source           = { :git => 'git@github.com:XanderSchoeman/XouDevSpec.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'

  #s.source_files = 'XouDevSpec/Classes/**/*'
  s.source_files = 'XouDevSpec/**/*'
  
  # s.resource_bundles = {
  #   'XouDevSpec' => ['XouDevSpec/Assets/*.png']
  # }
   s.static_framework = true
   s.public_header_files = 'XouDevSpec/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'Firebase/Analytics'
end
