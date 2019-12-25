
Pod::Spec.new do |spec|

  spec.name         = "CRHelperLib"
  spec.version      = "0.0.6"
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


  #创建子文件夹
  spec.subspec 'Base' do |ss|
    ss.source_files = "CRHelperLib/Base/*.{h,m}"
  end

  spec.subspec 'File' do |ss|
    ss.source_files = "CRHelperLib/File/*.{h,m}"
  end

  spec.subspec 'Media' do |ss|
    ss.source_files = "CRHelperLib/Media/*.{h,m}"
    ss.dependency 'CRHelperLib/Base'
  end

  spec.subspec 'UserCreator' do |ss|
    ss.source_files = "CRHelperLib/UserCreator/*.{h,m}"
    ss.dependency 'CRHelperLib/Base'
    ss.dependency 'CRHelperLib/Media'
  end

  spec.subspec 'View' do |ss|
    ss.source_files = "CRHelperLib/View/*.{h,m}"
    ss.dependency "Masonry", "~> 1.1.0"
    ss.dependency 'CRHelperLib/Base'
  end

end
