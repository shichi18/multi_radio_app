final radioDataList = [
  RadioData('超!A&G+', 'https://www.uniqueradio.jp/agplayer5/player.php'),
  RadioData('インターネットラジオステーション＜音泉＞', 'https://www.onsen.ag/'),
  RadioData('響 -HiBiKi Radio Station-', 'https://hibiki-radio.jp/'),
];

class RadioData {
  final String title;
  final String url;

  const RadioData(
    this.title,
    this.url,
  );
}
