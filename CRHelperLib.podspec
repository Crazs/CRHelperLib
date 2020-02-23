
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
  spec.dependency "MJRefresh"
  spec.dependency "AFNetworking", "~> 3.2.1"
  spec.dependency "SDWebImage", "~> 4.4.6"
  spec.dependency "Masonry", "~> 1.1.0"

end
