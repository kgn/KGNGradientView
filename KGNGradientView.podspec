Pod::Spec.new do |spec|
  spec.name = 'KGNGradientView'
  spec.version = '0.2.5'
  spec.authors = {'David Keegan' => 'git@davidkeegan.com'}
  spec.homepage = 'https://github.com/kgn/KGNGradientView'
  spec.summary = 'KGNGradientView is a collection UIView subclasses for linear and radial gradients.'
  spec.source = {:git => 'https://github.com/kgn/KGNGradientView.git', :tag => "v#{spec.version}"}
  spec.license = { :type => 'MIT', :file => 'LICENSE' }

  spec.platform = :ios, '8.0'
  spec.requires_arc = true
  spec.frameworks = 'UIKit'
  spec.source_files = 'Source/{GradientView,RadialGradientView}.swift'
end
