#
# Be sure to run `pod lib lint CRProjectInfo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CRProjectInfo'
  s.version          = '1.0.0'
  s.summary          = 'CRProjectInfo.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A short description of CRProjectInfo.
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Corotata/CRProjectInfo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'corotata' => 'corotata@qq.com' }
  s.source           = { :git => 'https://github.com/Corotata/CRProjectInfo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.xcconfig = {
   "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited)  PROJECT_DIR=@\""$PROJECT_DIR"\"'
  }
  s.source_files = 'CRProjectInfo/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CRProjectInfo' => ['CRProjectInfo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
