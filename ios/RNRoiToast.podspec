
Pod::Spec.new do |s|
  s.name         = "RNRoiToast"
  s.version      = "1.0.0"
  s.summary      = "RNRoiToast"
  s.description  = <<-DESC
                  RNRoiToast
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNRoiToast.git", :tag => "master" }
  s.source_files  = "RNRoiToast/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  