Pod::Spec.new do |s|
  s.name         = 'NewpayContractUtility'
  s.version      = '0.0.1'
  s.summary      = 'Core Ethereum data structures and algorithms.'
  s.homepage     = ''
  s.license      = { type: 'GPLv3', file: 'LICENSE' }
  s.authors      = { 'newtonproject' => 'newton-app@newtonproject.org' }

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.0'

  s.source       = { git: 'git@gitlab.newtonproject.org:xiawu/newton-newpay-ios-core.git', tag: s.version }
  s.source_files = 'Sources/**/*.{swift,h,m}'
  s.public_header_files = 'Sources/NewpayContractUtility.h', 'Sources/EthereumCrypto.h'

  s.dependency 'BigInt'
  s.dependency 'NewTrezorCrypto'

  s.pod_target_xcconfig = { 'SWIFT_OPTIMIZATION_LEVEL' => '-Owholemodule' }
end
