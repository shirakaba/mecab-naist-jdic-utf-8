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
yarn add mecab-naist-jdic

# or:

npm install --save mecab-naist-jdic
```

Next, specify this pod in your `Podfile`:

```ruby
pod 'mecab-naist-jdic-utf-8', :podspec => '../node_modules/mecab-naist-jdic/mecab-naist-jdic-utf-8.podspec'
```

Don't forget to install the pods.

```sh
cd ios
pod update
```

### Feature schema

It's based on IPADIC, and the tags are fully documented here https://osdn.net/projects/ipadic/docs ([English manual](https://osdn.net/projects/ipadic/docs/ipadic-2.7.0-manual-en.pdf/en/1/ipadic-2.7.0-manual-en.pdf.pdf)):

| index | role (Japanese)  | role (English) |
| ------|------------|------------------------- |
| 0     | 品詞       | part-of-speech |
| 1     | 品詞細分類1 | part-of-speech subtype 1 |
| 2     | 品詞細分類2 | part-of-speech subtype 2 |
| 3     | 品詞細分類3 | part-of-speech subtype 3 |
| 4     | 活用形     | inflected form |
| 5     | 活用型     | inflection type |
| 6     | 原形       | original form |
| 7     | 読み       | reading |
| 8     | 発音       | pronunciation |

#### Example feature strings

> 欲しがっていた

```
欲し: 形容詞,自立,*,*,形容詞・イ段,ガル接続,欲しい,ホシ,ホシ  
がっ: 動詞,接尾,*,*,五段・ラ行,連用タ接続,がる,ガッ,ガッ  
て: 助詞,接続助詞,*,*,*,*,て,テ,テ  
い: 動詞,非自立,*,*,一段,連用形,いる,イ,イ  
た: 助動詞,*,*,*,特殊・タ,基本形,た,タ,タ  
```

> 通ったんだろうな

```
通っ: 動詞,自立,*,*,五段・ラ行,連用タ接続,通る,トオッ,トーッ  
た: 助動詞,*,*,*,特殊・タ,基本形,た,タ,タ  
ん: 名詞,非自立,一般,*,*,*,ん,ン,ン  
だろ: 助動詞,*,*,*,特殊・ダ,未然形,だ,ダロ,ダロ  
う: 助動詞,*,*,*,不変化型,基本形,う,ウ,ウ  
な: 助詞,終助詞,*,*,*,*,な,ナ,ナ  
```

> 光らせておくように

```
光らせ: 動詞,自立,*,*,一段,連用形,光らせる,ヒカラセ,ヒカラセ  
て: 助詞,接続助詞,*,*,*,*,て,テ,テ  
おく: 動詞,非自立,*,*,五段・カ行イ音便,基本形,おく,オク,オク  
よう: 名詞,非自立,助動詞語幹,*,*,*,よう,ヨウ,ヨー  
に: 助詞,副詞化,*,*,*,*,に,ニ,ニ  
```

## License

`mecab-naist-jdic-utf-8` is available only under the BSD licence: `mecab-naist-jdic-utf-8/bundleContents/COPYING`.

## See also

* https://github.com/shirakaba/mecab-ko
* https://github.com/shirakaba/mecab-ko-dic-utf-8
* https://github.com/shirakaba/iPhone-libmecab