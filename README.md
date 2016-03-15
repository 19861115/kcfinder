# kcfinder : Kindle Comic Finder

[![Build Status](https://travis-ci.org/19861115/kcfinder.svg?branch=master)](https://travis-ci.org/19861115/kcfinder)

## なにこれ

### 概要

Kindleコミック(電子書籍)を表紙買いするためのツール

### 目指す仕様

* 最近発売されたKindleコミックの表紙画像がずらりと並ぶ
* 画像をクリックするとKindkeストアの詳細ページに飛ぶ
* オフィシャルサイト同様、カテゴリごとのフィルタや検索に対応

#### オフィシャルとの違い

* 表紙画像以外は表示しない
  * 本棚を眺めるような感覚のページにしたい
* 著者名等の表記ゆれを統一

## 使用方法

### 環境変数

下記3項目の環境変数を設定する

1. `AWS_ACCESS_KEY_ID`
1. `AWS_SECRET_KEY`
1. `ASSOCIATE_TAG`

### DB準備

`lib/task/comic_getter.rb`を編集し、下記コマンドを実行

```
$ rails runner Task::ComicGetter
```
