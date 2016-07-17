Pod::Spec.new do |s|
  s.name             = 'TouchPresenter'
  s.version          = '0.0.1'
  s.summary          = 'A short description of TouchPresenter.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/BenchR267/TouchPresenter'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Benjamin Herzog' => 'mail@benchr.de' }
  s.source           = { :git => 'https://github.com/BenchR267/TouchPresenter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TouchPresenter/**/*'

  s.frameworks = 'UIKit'
end
