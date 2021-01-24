# wake_up_smart_humidifier
SwitchBot スマート加湿器が止まっていたら起動するスクリプト

## インストール & 使い方
### git clone & 移動
```
$ git clone https://github.com/ytkg/wake_up_smart_humidifier.git
$ cd wake_up_smart_humidifier
```

### 環境変数のセット
```
$ cp .env.sample .env
$ vim .env
```

```
SWITCHBOT_API_TOKEN=
SWITCHBOT_DEVICE_ID=
```

### 実行権限の付与
```
$ chmod +x script.sh
```

### crontabにセット
```
*/5 * * * * /path/to/wake_up_smart_humidifier/script.sh
```
