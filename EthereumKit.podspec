Pod::Spec.new do |spec|
  spec.name = 'EthereumKit'
  spec.version = '0.1.1'
  spec.summary = 'Ethereum protocol toolkit for Swift'
  spec.description = <<-DESC
                       EthereumKit implements Ethereum protocol in Swift. It is an implementation of the Ethereum SPV protocol written (almost) entirely in swift.
                       ```
                    DESC
  spec.homepage = 'https://github.com/OnerootProject/EthereumKit'
  spec.license = { :type => 'Apache 2.0', :file => 'LICENSE' }
  spec.author = { 'Liu Pengpeng' => 'i@liupengpeng.com }
  spec.social_media_url = 'https://twitter.com/pengpengliu'

  spec.requires_arc = true
  spec.source = { git: 'https://github.com/OnerootProject/EthereumKit.git', tag: "v#{spec.version}" }
  spec.source_files = 'EthereumKit/**/*.{h,m,swift}'
  spec.private_header_files = 'EthereumKit/**/EthereumKitInternal.h'
  spec.module_map = 'EthereumKit/EthereumKit.modulemap'
  spec.ios.deployment_target = '8.0'
  spec.swift_version = '4.0'

  spec.pod_target_xcconfig = { 'SWIFT_WHOLE_MODULE_OPTIMIZATION' => 'YES',
                               'APPLICATION_EXTENSION_API_ONLY' => 'YES',
                               'SWIFT_INCLUDE_PATHS' => '${PODS_ROOT}/EthereumKit/Libraries',
                               'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/EthereumKit/Libraries/openssl/include" "${PODS_ROOT}/EthereumKit/Libraries/secp256k1/include"',
                               'LIBRARY_SEARCH_PATHS' => '"${PODS_ROOT}/EthereumKit/Libraries/openssl/lib" "${PODS_ROOT}/EthereumKit/Libraries/secp256k1/lib"' }
  spec.preserve_paths = ['setup', 'Libraries']
  spec.prepare_command = 'sh setup/build_libraries.sh'
end

