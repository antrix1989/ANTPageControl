#
# Be sure to run `pod lib lint ANTPageControl.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ANTPageControl'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ANTPageControl.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/antrix1989/ANTPageControl.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sergey Demchenko' => 'antrix1989@gmail.com' }
  s.source           = { :git => 'https://github.com/antrix1989/ANTPageControl.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.source_files = 'ANTPageControl/Classes/**/*'
end
