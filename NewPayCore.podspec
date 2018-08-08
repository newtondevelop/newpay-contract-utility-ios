Pod::Spec.new do |s|
  s.name         = 'NewPayCore'
  s.version      = '0.0.1'
  s.summary      = 'Core Ethereum data structures and algorithms.'
  s.homepage     = 'https://github.com/TrustWallet/trust-core'
  s.license      = 'MIT'
  s.authors      = { 'Alejandro Isaza' => 'al@isaza.ca' }

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.0'

  s.source       = { git: 'git@gitlab.newtonproject.org:xiawu/newton-newpay-ios-core.git', tag: s.version }
  s.source_files = 'Sources/**/*.{swift,h,m}'
  s.public_header_files = 'Sources/NewPayCore.h', 'Sources/EthereumCrypto.h'

  s.dependency 'BigInt'
  s.dependency 'NewTrezorCrypto'

  s.pod_target_xcconfig = { 'SWIFT_OPTIMIZATION_LEVEL' => '-Owholemodule' }
end
