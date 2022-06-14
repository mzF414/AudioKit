# Copyright (c) AudioKit, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

Pod::Spec.new do |spec|
  spec.name = 'AudioKit'
  spec.version = '5.4.2'
  spec.authors = { 'Aurelius Prochazka' => 'audiokit@audiokit.io' }
  spec.license =  { :type => 'MIT' }
  spec.homepage = 'https://audiokit.io/'
  spec.social_media_url = 'https://twitter.com/AudioKitMan'
  spec.documentation_url = 'http://audiokit.io/docs/'
  spec.static_framework = true
  spec.summary = 'Open-source audio synthesis, processing, & analysis platform.'
  
  spec.source = {
    :git => 'https://github.com/mzf414/AudioKit.git',
    :tag => spec.version.to_s,
  }
  
  spec.platforms = { :ios => "11.0", :osx => "10.13", :tvos => "11.0" }
  spec.module_name = 'AudioKit'
  spec.swift_version = '5.0'
  spec.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
  
  spec.source_files = 'Sources/AudioKit/**/*.{swift}'
end
