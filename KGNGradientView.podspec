Pod::Spec.new do |spec|
  spec.name = 'KGNGradientView'
  spec.version = '0.0.3'
  spec.authors = {'David Keegan' => 'git@davidkeegan.com'}
  spec.homepage = 'https://github.com/kgn/KGNGradientView'
  spec.summary = 'CAGradientLayer backed UIView'
  spec.source = {:git => 'https://github.com/kgn/KGNGradientView.git', :tag => "v#{spec.version}"}
  spec.license = { :type => 'MIT', :file => 'LICENSE' }

  spec.platform = :ios
  spec.requires_arc = true
  spec.source_files = 'KGNGradientView'
end
