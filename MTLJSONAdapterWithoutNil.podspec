Pod::Spec.new do |s|
  s.name             = "MTLJSONAdapterWithoutNil"
  s.version          = "1.0"
  s.summary          = "Mantle JSON Adapter that ignore null values."
  s.homepage         = "https://github.com/sdkdimon/MTLJSONAdapterWithoutNil"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Dmitry Lizin" => "sdkdimon@gmail.com" }
  s.source           = { :git => "https://github.com/sdkdimon/MTLJSONAdapterWithoutNil.git", :tag => s.version }

  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.module_name = 'MTLJSONAdapterWithoutNil'
  s.source_files = 'Classes/*.{h,m}'
  s.dependency 'Mantle', '2.0'

end



