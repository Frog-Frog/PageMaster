Pod::Spec.new do |s|

  s.name         = "PageViewController"
  s.version      = "1.0"
  s.summary      = "PageViewController is a wrapper class for easier use of UIPageViewController."
  s.homepage     = "https://github.com/PKPK-Carnage/PageViewController"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Tomosuke Okada" => "pkpkcarnage@gmail.com" }
  s.social_media_url   = "https://github.com/PKPK-Carnage"
  s.platform     = :ios, "8.0"
  s.swift_version = "4.2"
  s.source       = { :git => "https://github.com/PKPK-Carnage/PageViewController.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Classes/*.{swift}"
  s.requires_arc = true

end
