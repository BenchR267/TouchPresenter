Pod::Spec.new do |s|
  s.name             = 'TouchPresenter'
  s.version          = '1.0.0'
  s.summary          = 'TouchPresenter is a small helper to hightlight touches.'

  s.description      = <<-DESC
If you want to create a rich video presentation of you app,
you need some kind of visualization for the touches since
they are not visible in screen recordings.
This library offers the possibility to highlight every
touch on the screen.
You are also able to create own custom indicators.
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
