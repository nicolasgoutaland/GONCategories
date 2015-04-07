Pod::Spec.new do |s|
  s.name         = "GONMacros"
  s.version      = "0.5"
  s.summary      = "Just a bunch of categories I wrote and I am using for years now"
  s.platform 	 = :ios, "7.0"
  s.description  = <<-DESC
					Just a bunch of useful macros
					ARC only
                   DESC

  s.homepage     = "https://github.com/nicolasgoutaland/GONCategories"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "nicolasgoutaland" => "nicolas.goutaland@gmail.com" }
  s.source       = { :git => "https://github.com/nicolasgoutaland/GONCategories.git", :tag => "#{s.version}" }
  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  s.requires_arc = true
end