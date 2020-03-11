require "json"

package = JSON.parse(File.read(File.join(__dir__, "./package.json")))

Pod::Spec.new do |s|
  s.name         = "RNSpringScrollView-niefixd"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = "https://gitee.com/niedcode/react-native-spring-scrollview"
  s.license      = package["license"]
  s.author       = { "nies" => "13298408382@163.com" }
  s.platforms    = { :ios => "7.0", :tvos => "9.0" }
  s.source       = { :git => "https://gitee.com/niedcode/react-native-spring-scrollview.git", :tag => s.version }
  s.source_files  = "./ios/SpringScrollView/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end
