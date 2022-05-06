# Copyright (c) AudioKit, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

Pod::Spec.new do |spec|
  spec.name = 'AudioKit'
  spec.version = '5.3.0'
  spec.authors = { 'Aurelius Prochazka' => 'audiokit@audiokit.io' }
  spec.license =  { :type => 'MIT' }
  spec.homepage = 'https://audiokit.io/'
  spec.social_media_url = 'https://twitter.com/AudioKitMan'
  spec.documentation_url = 'http://audiokit.io/docs/'
  spec.static_framework = true
  spec.summary = 'Open-source audio synthesis, processing, & analysis platform.'

  spec.cocoapods_version = '>= 1.9.0'

  spec.source = {
    :http => 'https://github.com/AudioKit/AudioKit/releases/download/v5.3.0/AudioKit.xcframeworks.zip'
  }
  spec.platforms = { :ios => "11.0", :osx => "10.14", :tvos => "11.0" }
  spec.frameworks = 'AVFoundation'
  spec.libraries = 'c++'
  spec.user_target_xcconfig = {
    "ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES": "YES",
    "LIBRARY_SEARCH_PATHS": "$(TOOLCHAIN_DIR)/usr/lib/swift/$(PLATFORM_NAME)"
  }

  spec.subspec 'Core' do |ss|
    ss.dependency 'AudioKit/C'

    ss.vendored_frameworks 'AudioKit.xcframework'
  end

  spec.subspec 'C' do |ss|
    ss.dependency 'AudioKit/STK'
    ss.dependency 'AudioKit/Sporth'
    ss.dependency 'AudioKit/Soundpipe'

    ss.vendored_frameworks 'CAudioKit.xcframework'
  end

  spec.subspec 'STK' do |ss|
    ss.vendored_frameworks 'STK.xcframework'
  end

  spec.subspec 'Soundpipe' do |ss|
    ss.vendored_frameworks 'soundpipe.xcframework'
  end

  spec.subspec 'Sporth' do |ss|
    ss.vendored_frameworks 'sporth.xcframework'
  end

  spec.swift_version = '5.0'
end
