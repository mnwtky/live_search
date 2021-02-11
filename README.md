# LIVE SEARCH

https://user-images.githubusercontent.com/69100365/107614711-2feab980-6c8e-11eb-8fba-05462c9c3781.mp4

# URL
http://live-search.work/

ゲストログイン(閲覧用)があります。

# アプリケーション概要

都内のイベントを投稿、検索できるサービスです。

# 機能一覧

###ユーザー管理機能(devise, Active Hash)
ログイン・ログアウト機能

###イベント投稿機能
画像投稿(Active Storage, S3)

###イベント閲覧機能
新着イベント閲覧
人気イベント一覧として、いいね数の多い投稿が表示されるよう実装

###イベント詳細閲覧機能
非同期いいね機能(ログインユーザーのみ可)

###イベント検索機能(ransack)
キーワード検索
Active Hashによるselect検索
検索結果一覧をページネーション機能を用いて表示(kaminari)

###マイページ機能
お気に入り登録したイベントを表示
自身が投稿したイベントを表示

