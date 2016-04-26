Pod::Spec.new do |s|
 s.name = 'XLFBaseHttpRequestKit'
 s.version = '1.0.0'
 s.summary = 'A short description of MyPodDemo.'
 s.description = <<-DESC
 A longer description of XLFBaseHttpRequestKit in Markdown format.
 * Think: Why did you write this? What is the focus? What does it do?
 * CocoaPods will be using this to generate tags, and improve search results.
 * Try to keep it short, snappy and to the point.
 * Finally, don't worry about the indent, CocoaPods strips it!
 DESC
 s.homepage = 'https://github.com/MarkeJave/XLFBaseHttpRequestKit'
 s.license = 'MIT'
 s.author = { 'MarkeJave' => '308865427@qq.com' }
 s.source = { :git => 'https://github.com/MarkeJave/XLFBaseHttpRequestKit.git', :tag => s.version.to_s }
 s.source_files = 'BaseHttpRequest/*.{h,m}', 'BaseHttpRequest/**/*.{h,m}'
 s.requires_arc = true
 s.platform = :ios
 s.ios.deployment_target = '7.0'

 non_arc_files = 'BaseHttpRequest/JSONKit/JSONPrivateKit.{h,m}'

 s.exclude_files = non_arc_files
 s.subspec 'no-arc' do |sna|
		sna.requires_arc = false
 		sna.source_files = non_arc_files
	end
 end