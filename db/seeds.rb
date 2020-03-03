# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 駅データ
Station.create!([{name: '新宿'}, {name: '町田'}, {name: '横浜'}])

# 施設データ
Workshop.create!(
  [
    {
      name: 'THE HUB 新宿',
      category: '1',
      address: '東京都新宿区新宿4-3-15 レイフラット新宿B棟3F',
      wifi: true,
      opening_time: 'ビジターの場合：[平日]10:00~19:00（会員の場合：[平日]7:00~23:00）',
      price: '1日/2,000円（1時間/600円）',
      note: '2018年5月にオープンしたコワーキングスペース。ビジターが利用できる作業スペースは、デスクスペース、カウンタースペース、ソファスペースの3種類存在しておりまして、ビジターは自分のスタイルにあった座席を選ぶことができます。
            通話禁止のルールが敷かれているので、黙々と集中したい方にぴったりのコワーキングスペースです。
            また、ビジターでも利用できるロッカー、会員登録制（無料）などの制度がしっかりしており、セキュリティが高く安心して利用できるでしょう。',
      station_id: 1
    },
    {
      name: 'BUSO AGORA',
      category: 1,
      address: '東京都町田市原町田6-9-8 アエタ町田4階',
      wifi: true,
      opening_time: '[平日]9:00~23:00 [土日祝]10:00~20:00',
      price: '1日/1,500円',
      note: '約520平米(157坪)の広々としたワーキングスペースが町田駅から徒歩3分の場所にあります。また、インキュベーション マネージャー(事業アドバイスを行う専門家)が在籍しており、起業する方の相談・サポートなどを行います。事業内容や相談内容によって、地域の専門家をコーディネートしていきます。スタートアップ向けのイベントや地域の企業や専門との交流イベントも毎月開催され、ビジネスがさらに加速するコワーキングスペースを目指しています。',
      station_id: 2,
    },
    {
      name: 'NEW YORKERS Cafe 町田店',
      category: 2,
      address: '東京都町田市森野1-13-14 日生町田ビル 1F',
      wifi: true,
      seats_number: 90,
      opening_time: '[月～土]7:00～22:30 [日・祝]7:30 ～22:00',
      price: '予算：～999円',
      note: '有名な喫茶店・銀座ルノアールが展開するニューヨークテイスト満載のカフェです。全席ではありませんが比較的たくさんの席に電源が設置されています。朝早くから夜遅くまで営業されていて、フードメニューが充実しているのも大きな特徴です。ベーグルやホットドッグ、プレートメニューなど、ニューヨーク風なメニューがたくさんあります。',
      station_id: 2
    },
    {
      name: 'いいオフィス横浜 by MeRISE',
      category: 1,
      address: '神奈川県横浜市西区北幸2-10-48 むつみビル5階',
      wifi: true,
      opening_time: '[月～金]13:00-22:00 [土日祝]10:00-19:00',
      price: '1日/2,000円 ※ お支払はクレジットカードのみ',
      note: '英会話スクールの中に設けられたコワーキングスペース。「MeRISE英会話」のサービスが受けられます。（有料）',
      station_id: 3
    },
    {
      name: 'WIRED CAFE 横浜相鉄ジョイナス店 ',
      category: 2,
      address: '神奈川県横浜市西区南幸1-5-1 ボウリングの森1F',
      wifi: true,
      seats_number: 84,
      opening_time: '[月~日]10:00-21:00',
      price: '予算：1000～1999円',
      note: 'JR各線・相鉄線・京急本線・横浜市営地下鉄・東急東横線の全線から徒歩5分圏内の場所にあり、アクセスは抜群です。',
      station_id: 3
    }
  ]
)



