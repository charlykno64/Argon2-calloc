#
# Be sure to run `pod lib lint Argon2.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SignalArgon2CAlloc"
  s.version          = "1.3.4"
  s.summary          = "A Swift wrapper around the reference Argon2 implementation without the malloc security warning."

  s.description      = <<-DESC
    A Swift wrapper around the reference Argon2 implementation without the malloc security warning using the slower but more secure callow alternative. It also includes the last commits from P-H-C phc-winner-argon2.
  DESC

  s.homepage         = "https://github.com/charlykno64/Argon2-calloc"
  s.license          = 'GPLv3'
  s.author           = { "iOS Team" => "carlosfabian24.cm@gmail.com" }
  s.source           = { git: "https://github.com/charlykno64/Argon2-calloc.git", tag: s.version.to_s, submodules: true }

  s.platform     = :ios, '12.0.1'
  s.requires_arc = true
  spec.swift_version = '4.0'

  s.source_files =
    'ios/src/**/*.swift',
    'phc-winner-argon2-calloc/src/argon2.c',
    'phc-winner-argon2-calloc/src/core.{c,h}',
    'phc-winner-argon2-calloc/src/thread.{c,h}',
    'phc-winner-argon2-calloc/src/encoding.{c,h}',
    'phc-winner-argon2-calloc/src/blake2/blake2.h',
    'phc-winner-argon2-calloc/src/blake2/blake2b.c',
    'phc-winner-argon2-calloc/src/blake2/blake2-impl.h',
    'phc-winner-argon2-calloc/include/**/*.h'
  s.osx.source_files =
    'phc-winner-argon2-calloc/src/opt.c',
    'phc-winner-argon2-calloc/src/blake2/blamka-round-opt.h'
  s.ios.source_files =
    'phc-winner-argon2-calloc/src/ref.c',
    'phc-winner-argon2-calloc/src/blake2/blamka-round-ref.h'
  s.tvos.source_files =
    'phc-winner-argon2-calloc/src/ref.c',
    'phc-winner-argon2-calloc/src/blake2/blamka-round-ref.h'
  s.watchos.source_files =
    'phc-winner-argon2-calloc/src/ref.c',
    'phc-winner-argon2-calloc/src/blake2/blamka-round-ref.h'

  s.public_header_files = 'phc-winner-argon2-calloc/include/**/*.h'

  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'ios/tests/**/*.swift'
  end
end
