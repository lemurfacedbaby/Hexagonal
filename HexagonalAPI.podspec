
Pod::Spec.new do |s|
  s.name         = "HexagonalAPI"

  s.version      = "1.0.2"

  s.summary      = "A hexagonal architecture for swift."

  s.description  = <<-DESC
The hexagonal architecture can be used in any project to add the functionality of multiple ports and specific brand adapters.
		      DESC

  s.homepage     = "https://github.com/lemurfacedbaby/Hexagonal"

  s.license      = "MIT"

  s.author       = { "Bryan Cooper" => "bcooperjg@gmail.com" }

  s.platform     = :ios, "11.0"

  s.source       = { :git => "https://github.com/lemurfacedbaby/Hexagonal.git", :tag => s.version.to_s }

  s.source_files  = "HexagonalAPI/**/*"

  s.pod_target_xcconfig = {'SWIFT_VERSION' => '4' }

  s.dependency 'Firebase/Core'
  
  s.dependency 'Firebase/Auth'
end
