Pod::Spec.new do |s|
  s.name         = "GONCategories"
  s.version      = "0.5.8"
  s.summary      = "Just a bunch of categories I wrote and I am using for years now"
  s.platform 	 = :ios, "7.0"
  s.description  = <<-DESC
					Just a bunch of categories I wrote and I am using for years now.
					Some may are pure syntactic sugar.
					ARC only
                   DESC

  s.homepage     = "https://github.com/nicolasgoutaland/GONCategories"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "nicolasgoutaland" => "nicolas.goutaland@gmail.com" }
  s.source       = { :git => "https://github.com/nicolasgoutaland/GONCategories.git", :tag => "#{s.version}" }
  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  s.requires_arc = true
  s.framework    = 'CoreData', 'StoreKit', 'ImageIO'
end
