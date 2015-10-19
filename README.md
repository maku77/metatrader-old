# metatrader

MetaTrader (MT4) による FX 自動トレード用のエキスパートアドバイザ (EA)、および各種カスタムインジケータ、スクリプトなどを管理します。
下記のような、**build600** 以降のデータフォルダ構成を想定しています。

- /Experts/
- /Include/
- /Indicators/
- /Libraries/
- /Scripts/

これらのファイルをすべて管理対象としてしまうと、MetaTrader のデフォルトのスクリプトなども含まれてしまうので、まく作成のファイルは下記のような maku ディレクトリ以下に置き、それ以外のファイルを `.gitignore` で管理対象から外しています。

- /Experts/maku/
- /Include/maku/
- /Indicators/maku/
- /Libraries/maku/
- /Scripts/maku/
