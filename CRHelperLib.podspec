
Pod::Spec.new do |spec|

  spec.name         = "CRHelperLib"
  spec.version      = "0.1.0"
  spec.summary      = "自用小助手"
  spec.description  = "Crazs"
  spec.homepage     = "https://github.com/Crazs/CRHelperLib"
  spec.license      = "MIT"
  spec.author             = { "Crazs" => "zhouwtzs@163.com" }
  spec.platform     = :ios
  spec.source       = { :git => "https://github.com/Crazs/CRHelperLib.git", :tag => "#{spec.version}" }
  spec.source_files  = "CRHelperLib/*.{h,m}"
  
  spec.dependency "Masonry", "~> 1.1.0"

end
