# 各ファイルについて
## setup.shについて
setup.shはMac OSを新しく購入し、最初にsetupを行う為のスクリプトです。
HomeBrew、rbenv、Gitのインストールを実施する他、brew caskによるinstallやmasについてのinstallをコメントアウトした状態で記述してあります。

## xcode-pr-setup.shについて
xcode-pr-setup.shはXcodeのプロジェクトを作成した際に、最初に色々とinstallする為のスクリプトです。
BundlerやCocoaPods、Carthageのインストールを記述してあります。
rbenvでのバージョン指定やCocoaPodsのバージョン指定などは適宜修正するなりアップデートするなりしてください。
