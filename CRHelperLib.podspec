
Pod::Spec.new do |spec|

  spec.name         = "CRHelperLib"
  spec.version      = "0.1.2"
  spec.summary      = "自用小助手"
  spec.description  = "Crazs"
  spec.homepage     = "https://github.com/Crazs/CRHelperLib"
  spec.license      = "MIT"
  spec.author       = { "Crazs" => "zhouwtzs@163.com" }
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/Crazs/CRHelperLib.git", :tag => "#{spec.version}" }

  spec.subspec 'MasonryExt' do |ss|
      ss.dependency "Masonry"
      ss.source_files           = "CRHelperLib/MasonryExt/*.{h,m}"
      ss.public_header_files    = "CRHelperLib/MasonryExt/*.h"
  end
  
  spec.subspec 'Common' do |ss|
      ss.source_files  = "CRHelperLib/Common/*.{h,m}"
      ss.public_header_files = "CRHelperLib/Common/CRHelperLibExt.h","CRHelperLib/Common/*.h"
  end
  
  spec.subspec 'Bases' do |ss|
      ss.dependency "MJRefresh"
      ss.source_files  = "CRHelperLib/Bases/*.{h,m}"
      ss.public_header_files = "CRHelperLib/Bases/CRBases.h","CRHelperLib/Bases/*.h"
  end

  spec.subspec 'Network' do |ss|
      ss.source_files  = "CRHelperLib/Network/*.{h,m}"
      ss.public_header_files = "CRHelperLib/Network/*.h"
  end

end
