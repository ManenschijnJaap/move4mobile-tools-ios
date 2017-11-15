Pod::Spec.new do |s|
  s.name         = "Move4MobileTools"
  s.version      = "0.3"
  s.summary      = "Some useful tools to use in your iOS Swift project."

  s.description  = <<-DESC
    Some useful tools to use in your iOS Swift project. This pod contains some helpers
and extensions to make some of the basic operations easier.
                   DESC

  s.homepage     = "https://github.com/jandoornbos/move4mobile-tools-ios"
  s.license      = "MIT"

  s.author       = { "Jan Doornbos" => "jdoornbos@move4mobile.com" }

  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/jandoornbos/move4mobile-tools-ios.git", :tag => "#{s.version}" }
  s.source_files = "Source/**/*.swift"

end
