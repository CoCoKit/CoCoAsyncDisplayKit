Pod::Spec.new do |s|
  s.name = "CoCoAsyncDisplayKit"
  s.version = "1.9.92.3"
  s.summary = "Smooth asynchronous user interfaces for iOS apps."
  s.license = {"type"=>"BSD"}
  s.authors = {"Scott Goodson"=>"scottgoodson@gmail.com", "Ryan Nystrom"=>"rnystrom@fb.com"}
  s.homepage = "http://asyncdisplaykit.org"
  s.social_media_url = "https://twitter.com/fbOpenSource"
  s.documentation_url = "http://asyncdisplaykit.org/appledoc/"
  s.frameworks = "AssetsLibrary","AVFoundation","MapKit","CoreMedia","CoreLocation"
  s.weak_frameworks = ["Photos", "MapKit"]
  s.libraries = "c++"
  s.requires_arc = true
  s.source = { :git => 'https://gitlab.com/CoCoKit/CoCoAsyncDisplayKit-framework.git' }
  s.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) PIN_REMOTE_IMAGE=1' }
  s.dependency 'PINRemoteImage/iOS', '= 3.0.0-beta.3'
  s.dependency 'PINCache', '= 3.0.1-beta'

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'CoCoAsyncDisplayKit.framework'

  s.social_media_url = 'https://twitter.com/fbOpenSource'
  s.library = 'c++'
  s.pod_target_xcconfig = {
       'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
       'CLANG_CXX_LIBRARY' => 'libc++'
  }
end
