class FaceMosaic < Formula
    desc "撮影動画にモザイク編集をかけるCLIツール"
    homepage "https://github.com/take-takashi/homebrew-face-mosaic"
    url "https://github.com/take-takashi/homebrew-face-mosaic/releases/download/v0.1.2/face-mosaic.tar.gz"
    sha256 ""
    license "MIT"
    version "v0.1.2"

    def install
        # PyInstallerで生成された実行ファイル（例：face-mosaic）があると仮定
        bin.install "face-mosaic"
    end

    test do
        # バージョン確認など、簡単な動作確認テストを記述
        system "#{bin}/face-mosaic"
    end
end
