# mecab-naist-jdic-utf-8

mecab-naist-jdic (a Japanese dictionary for use with Mecab), in UTF-8 format, organised as a Cocoapod and npm package for usage with iOS/macOS.

## Installation

### Installing from Cocoapods

Specify these pods in your `Podfile` (you can omit the Japanese or Korean dictionary if you only plan to use Mecab with one of the two languages):

```ruby
pod 'mecab-naist-jdic-utf-8'
```

```sh
pod update
```

### Installing as a Cocoapod from `npm` (for React Native iOS apps)

Add this npm package:

```sh
yarn add mecab-naist-jdic-utf-8

# or:

npm install --save mecab-naist-jdic-utf-8
```

Next, specify this pod in your `Podfile`:

```ruby
pod 'mecab-naist-jdic-utf-8', :podspec => '../node_modules/mecab-naist-jdic-utf-8/mecab-naist-jdic-utf-8.podspec'
```

Don't forget to install the pods.

```sh
cd ios
pod update
```

## License

`mecab-naist-jdic-utf-8` is available only under the BSD licence: `mecab-naist-jdic-utf-8/bundleContents/COPYING`.

## See also

* https://github.com/shirakaba/mecab-ko
* https://github.com/shirakaba/mecab-ko-dic-utf-8
* https://github.com/shirakaba/iPhone-libmecab