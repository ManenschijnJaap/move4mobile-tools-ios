#  Be sure to run `pod spec lint Move4MobileTools.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |s|
  s.name         = "Move4MobileTools"
  s.version      = "0.1"
  s.summary      = "Some useful tools to use in your iOS Swift project."

  s.description  = <<-DESC
    Some useful tools to use in your iOS Swift project. This pod contains some helpers
and extensions to make some of the basic operations easier.
                   DESC

  s.homepage     = "http://github.com/jandoornbos/move4mobile-ios-tools"
  s.license      = "MIT"

  s.author             = { "Jan Doornbos" => "jdoornbos@move4mobile.com" }

  s.platform     = :ios, "9.0"

  s.source       = { :git => "http://github.com/jandoornbos/move4mobile-ios-tools.git", :tag => "#{s.version}" }
  s.source_files = "Source/*.swift"

end
