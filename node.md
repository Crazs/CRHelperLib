
#创建子文件夹
 spec.subspec 'xxx' do |ss|         //子文件夹
   ss.source_files = "CRHelperLib/xxx/*.{h,m}"      //子文件夹文件
   ss.dependency 'CRHelperLib/BBB'         //子文件夹的前置
 end
