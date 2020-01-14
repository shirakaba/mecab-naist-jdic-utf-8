require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  
  # "mecab-naist-jdic-utf-8"triggers npm's spam detection, so we can't share exact names with package.json
  s.name         = "mecab-naist-jdic-utf-8"
  s.version      = package['version']
  s.summary      = package['description']
  s.homepage     = "https://github.com/shirakaba/mecab-naist-jdic-utf-8"
  s.license      = { :type => "BSD", :file => "bundleContents/COPYING" }
  s.author       = package['author']
  s.platforms    = { :ios => "10.3", :osx => "10.11" }
  s.source       = { :git => "https://github.com/shirakaba/mecab-naist-jdic-utf-8.git", :tag => "v#{s.version}" }
  # TODO: Decide a good way to optionally include the model file (model_file)
  s.resource_bundle = { "mecab-naist-jdic-utf-8" => "bundleContents/*" }
  s.info_plist = {
    'NSHumanReadableCopyright' => 'Copyright (c) 2009, Nara Institute of Science and Technology, Japan.',
    'NAIST JDIC authors' => 'Masayuki Asahara (masayua@gmail.com)',
    'NAIST JDIC repo' => 'http://sourceforge.jp/projects/naist-jdic/',
    'NAIST JDIC version' => '0.6.3b-20111013'
  }

end
